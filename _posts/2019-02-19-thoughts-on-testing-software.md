---
layout: post
title: "Thoughts on Testing Software"
tags:
 -
---

I have never been formally employed as a tester of software, but I have worked closely with people who are, and of course I have written thousands of tests- unit tests, integration tests, fuzz tests, even a (inefficient, not terribly useful) test coverage calculator- just to try out doing a fun thing.

### Types of tests and why to write them

#### Unit
Unit tests are the smallest unit of logic, at the method or class level. They're great when you have complicated business logic that is hard to follow, has lots of edge cases, or needs to be modified after being not-modified for months and years and no one is quite sure what it does or how to check if the essential behavior is preserved. When this happens, first you extract and exhaustively unit test the core logic, and then you can test-drive the addition of the new logic with lots more unit tests.

#### Integration
Integration tests usually include exercising the code in question from the user interface (whether that's a webpage, mobile app, REST API, or commandline interface). The purpose here is to make sure that there are no regressions in app behavior, no matter what changes, anywhere. For these tests though it is common to stub external dependencies like external APIs- basically anything that isn't owned by your team. This makes it possible to run these integration tests in a continuous integration server and not get weird failures caused by issues outside of your team's control.

#### Integration (external)
Some teams also have integration tests that *do* test connectivity and interaction with external dependencies outside the team's control- these should be run in a separate section from your team's continuous integration tests, because these tests will sometimes fail when the external dependency in question is having connectivity issues or bugs etc. These are a great early warning system but can also be a big source of false posite/negative signal about the health of your system, because the "staging/test" envinronment of your dependencies may not be an accurate reflection of their production versions.

#### Health/Smoke
These are tests that run against an environment to ensure that that environment is healthy. For some apps, this is displayed via a /status endpoint and if the endpoint returns 500 then the load balancer will take that node out of rotation. This is often things like "can we reach the database"

#### Fuzz
Fuzz tests generate input which is thrown at the app in the hope of causing an unexpected condition- like sending all nulls to the fields of an API endpoint should cause a 400 (bad user data) rather than a 500 (server error). Fuzz tests can have various depths. Deep duzz testing like [afl](http://lcamtuf.coredump.cx/afl/) is a common way to find security vulnerabilities by corrupting memory. Fuzz testing often incidentially tests sql injection. If you are using [swagger](https://swagger.io/) it is easy to write a test to iterate over your endpoints and send [bad data](https://gist.github.com/compwron/e9ce09694e55f24d3223057341df7907) to all of them- you can even create a user session to allow a more penetrative layer of tests to run.

#### Security
Security scanner tools are important to run- expeically before you open a bug bounty on your app,  or else you will have to pay out for trivial bugs that you could have found yourself with some automatic scanning.

Another kind of security tests are pentests "penetration tests" run by an outside company (or via a bug bounty program, although your results can be less private and you have less surety that most common angles of attack have been checked because you don't get a report for those attacks which found nothing)

This can also include dependency checking against a known vulnerability list, includding checking your dependencies for known vulnerabilities. 
- [java/gradle](https://github.com/jeremylong/dependency-check-gradle) 
- [js audit](https://docs.npmjs.com/auditing-package-dependencies-for-security-vulnerabilities) 
- [saas - hakiri](https://hakiri.io/) 
- [ruby brakeman](https://brakemanscanner.org/) 
- [saas snyk](https://snyk.io/test/)

#### Mutation
[Mutation testing](https://en.wikipedia.org/wiki/Mutation_testing) also tests the quality of your test coverage- i.e. if your mutation testing framework comments out an if statement in your code, and no tests fail, that means that you have no test covering that conditional. Mutation testing can be interesting to run when you also incorporate invalid data mutations, but "mutation testing" by itself usually refers to tests that change/edit the code itself.

### Concerns in testing

#### Test Coverage
Test coverage means the amount of your code that is "covered" by tests, i.e if you have test coverage of 90% then 10% of your code could be deleted / break and no test would detect the change. Hopefully that code isn't liklely to break. Some kinds of code (boilerplate code, config files, getter/setters) can throw off this metric, so be skeptical. Low code coverage is a problem, but 100% code coverage does not mean that you are safe. Just because code has been "exercised" (run) by a test, doesn't mean that that test contained any assertions about whether the code did the *right* thing! (Yhis is why mutation testing is so great- it find useless tests / ineffective tests)

#### Test data factories and builders
[Factorybot](https://github.com/thoughtbot/factory_bot) is an example of a data factory framework. The purpose of these is to make test data setup easy, even for complicated cases. You will almost certainly need one of these eventually- many teams write their own, but using a standard one saves you a lot of work! In java, I have used the "builder pattern" to do this also. You always want the default object output of a test facotry or test builder to be valid (whatever that means for your codebase/domain). You will also want a way to force the builder to emit invalid data, so you can test what you code does when data is invalid.

#### DRYness in testing
Tests should not be as DRY as code, because that makes it more likely that you will have the same code in the tests as what you are testing, which means that if you have a bug in both the code and test, the test will not catch the error.

#### Making sure that a test is good enough
If you haven't seen a test fail in the way that you know it should fail, don't trust that the test passing means that the thing you're testing is working correctly. 

#### Sanity tests
These are tests that test cross-cutting issues, rather than an individual method or class in your code. Some examples are testing that merchants can't access each other's data. Or testing that a long Il8n yml file is in alphabetical order (so that idems can be more easily found). Another interesting test is to check for the correct kind of "'"" in yml, or checking yml format validity, or checking that rails routes have actions. See below:

```(ruby)
describe 'foo.yaml' do
  it 'is valid yaml' do
    expect { YAML.parse(File.read(Rails.root.join('config', 'foo.yaml'))) }.not_to raise_error
  end
end
```

```(ruby)
describe 'Rails routing' do
  # These should probably be deleted since they are not used
  SKIP_PATHS = %w[
    /foo/bar
  ]
  Rails.application.routes.routes.map do |route|
    if route&.path&.spec && route.defaults[:controller] && route.defaults[:action]
      path = route.path.spec.to_s
      controller_name = route.defaults[:controller]
      action = route.defaults[:action]

      it "#{controller_name} controller has an action #{action.inspect} for path #{path}" do
        controller_str = (controller_name.split('/').map { |t| t.camelize }.join('::') + 'Controller')
        controller = controller_str.safe_constantize
        unless SKIP_PATHS.include?(path)
          expect(controller).to be_present, "#{controller_str} not defined"
          expect(controller.new).to be_available_action(action), "#{controller_str} has no action #{action.inspect}"
        end
      end
    end
  end
end
```

```(ruby)
describe 'sidekiq-cron.yml' do
  let(:path) { 'config/sidekiq-cron.yml' }

  it 'all classes exist' do
    YAML.load_file(path).each_value do |config|
      expect { config['class'].constantize }.not_to raise_error
    end
  end

  it 'all cron lines are parsable and in correct timezone' do
    YAML.load_file(path).each do |name, config|
      if config['cron'].first == 'H'
        config['cron'] = "#{name.hash % 60}#{config['cron'][1..-1]}"
      end

      expect(Fugit.parse(config['cron']).timezone).to eq(Time.zone.tzinfo)
    end
  end

  it 'all jobs are named after their class' do
    YAML.load_file(path).each do |job, config|
      expect(job).to eq(config['class'])
    end
  end

  it 'expected human readable strings match' do
    YAML.load_file(path).each_value do |config|
      cron_without_timezone = config['cron'].chomp(' America/Los_Angeles')
      if cron_without_timezone.first == 'H'
        # Use a fixed time until we have a consistent hash method
        cron_without_timezone = "5#{cron_without_timezone[1..-1]}"
      end
      human_readable = Cronex::ExpressionDescriptor.new(cron_without_timezone).description
      expect(config['human_readable']).to eq(human_readable)
    end
  end
end
```

#### Assorted other notes

- the tests should fail when the software is broken
- the tests should not fail when the software is not broken
- tests should be easy to write, because we want people to write them
- some tests are useless because they test things that never break
- some tests are too expensive because they take too long to run
- In React, a lot of testing is based around "does this render?" and "does this data look right?". You can read more about React testing here https://reactjs.org/docs/testing.html


#### Resources

- [dependency-check-gradle](https://github.com/jeremylong/dependency-check-gradle) (JVM)
- [brakeman](https://brakemanscanner.org) (ruby)



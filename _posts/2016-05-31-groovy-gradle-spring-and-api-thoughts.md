---
layout: post
title: "Groovy Gradle Spring and API thoughts"
tags:
 -
---


## Testing and mocking

Mockito does not work with groovy because of [Mockito Issue 303](https://code.google.com/archive/p/mockito/issues/303). It was fixed by [cyrusinnovation/mockito-groovy-support](https://github.com/cyrusinnovation/mockito-groovy-support) for old versions of both mockito and groovy, but for modern development you will want to use [Spock](https://github.com/spockframework/spock) (the current best solution for groovy testing) because

1. Spock has great given/when/then syntax and is powerful with mocking, especially at the integration level
2. Spock has beautiful error output
3. Otherwise we would be using plain groovy mocking, which is great except for the very important detriment that you can't pass a groovy mock into a constructor, so if you are using constructor injection, it is basically useless.


## Security checking dependencies

We are using the [OWASP dependency check as a gradle task](https://jeremylong.github.io/DependencyCheck/dependency-check-gradle/), thanks to this plugin: ["org.owasp:dependency-check-gradle:1.3.6"](https://bintray.com/bintray/jcenter/org.owasp%3Adependency-check-gradle/view)


## Linting

We are using [codenarc](http://codenarc.sourceforge.net/) for groovy code linting.


## Test coverage

We are using [jacobo](https://docs.gradle.org/current/userguide/jacoco_plugin.html) (the gradle default) for test coverage reporting (what percentage of a codebase is covered by tests)


## Build version

In order to get a buildtime-generated parameter like a build number (coming in from your CI system- i.e build 1 would be 0.0.1 and build 2 would be 0.0.2. This is not quite [semver](http://semver.org/) but it seems to my team to be better than 0.0.0-1 or 0.0.0.1) because we are ok with large Patch versions and we want to be able to stick to three digits for clarity sake and in order to distance ourselves from the 0.0.0-SNAPSHOT style that is common in Maven, because we want to never never never overwrite a build number. We thought about appending a git hash, to be even more sure to never overwrite versions, but there is no way for the human eye to be able to tell which number is before which other number when they look like 0.0.0-5a6fadf and 0.0.0-686021d etc


## Displaying build time properties in the /info endpoint

At first, we used the [Grgit gradle plugin](https://github.com/ajoberstar/gradle-git) for getting the git hash. I believe that it is basically a set of useful bindings over os-specific implementations.

{% highlight groovy %}
def getCommitHash() {
    def git = Grgit.open(dir: ".")
    git.head().id
}
{% endhighlight %}

In order to get the build version, we do:

{% highlight groovy %}
def getBuildVersion() {
    def defaultBuildVersion = 0
    def goPipelineLabel = System.getenv()["BUILD_VERSION"] // this is an environment variable

    if (goPipelineLabel != null) {
        defaultBuildVersion = goPipelineLabel
    }

    def builtJarVersion = "0.0.${defaultBuildVersion}"
    println "Built version: " + builtJarVersion
    version = builtJarVersion
    builtJarVersion
}
{% endhighlight %}

In order to write these properties to a file, we are using:

{% highlight groovy %}
task writeBuildtimePropertiesToFile() {
    def properties = ["version": getBuildVersion(),
                      "gitHash": getCommitHash()
    ]
    def dir = "src/main/resources/"
    file(dir).mkdirs()
    file(dir + "buildProperties.json").write(new JsonBuilder(properties).toPrettyString())
}
{% endhighlight %}

Once the properties are written to a file, you can read in the file from the running Spring application and display them via an endpoint

BUT if you're using Spring / Spring Boot and you want this functionality, instead you should use this plugin: [http://docs.spring.io/spring-boot/docs/current/reference/html/production-ready-endpoints.html#production-ready-git-commit-information](http://docs.spring.io/spring-boot/docs/current/reference/html/production-ready-endpoints.html#production-ready-git-commit-information) on github at [https://github.com/n0mer/gradle-git-properties](https://github.com/n0mer/gradle-git-properties)


## API Documentation

We are NOT generating Swagger from our Spring application (i.e. "code-first" development); instead for now we are doing "specification-first" i.e. checking our handwritten Spring endpoints against a hand-written, versioned Swagger file (which will eventually be). This is via the official library [swagger-parser](https://github.com/swagger-api/swagger-parser)

Using some code similar to the below (the below falsely assumes that all API requests are GET and should return ok statuses)

{% highlight groovy %}
@WebAppConfiguration
@SpringApplicationConfiguration(classes = MyApplicationName.class)
class SwaggerContractTest extends Specification {
    public static final String SWAGGER_SPECIFICATION_FILE = "MyApplicationName-swagger.json"

    @Resource
    private WebApplicationContext webApplicationContext

    MockMvc mockMvc

    public void setup() {
        mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build()
    }

    @Autowired
    RequestMappingHandlerMapping requestMappingHandlerMapping

    def "checks that api can fulfill provided swaggerdoc"() {
        given:
        def swaggerText = this.getClass().getClassLoader().getResourceAsStream(SWAGGER_SPECIFICATION_FILE).text
        def swagger = new SwaggerParser().parse(swaggerText)

        expect:
        swagger.getPaths().size() > 0
        swagger.getPaths().each { k, v ->
            mockMvc.perform(get(k))
                    .andExpect(status().isOk())
                    .andExpect(content().contentType(MediaType.APPLICATION_JSON_UTF8))
        }
    }
}
{% endhighlight %}

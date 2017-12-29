updates
- in presentations/ use hosted presentation js instead of vendored

Posts I might write:

- places I think would be cool (for me) to work at, and why
- why to remove names from code samples, resumes (references and summary)
- salary history https://www.npr.org/2014/04/13/301989789/pay-secrecy-policies-at-work-often-illegal-and-misunderstood
- - soylent
- howto remote project
- mountebank
- leaving TW thoughts
- musical transcription http://scorecloud.com/ https://www.seventhstring.com/xscribe/overview.html https://www.lunaverus.com/ https://www.musical-u.com/learn/whats-the-best-program-to-transcribe-music/  http://lilypond.org/
Try a song by Michael Head or John Ireland. Try singing a piece by Schubert in the English language, like Ave Maria. https://www.wikihow.com/Become-a-Good-Singer-Without-Lessons


technical and nontechnical talks to give

"this year in physics and astronomy"
"space code" what is the most recent code that is running in space? Most useful? Who writes it?
"How does tweeting from space work?"


git ssh key permissions and how to manipulate them in ruby:
Git only tracks the executable bit of files, not other file permissions; this can cause issues with tests that use a checked-in ssh key to connect to environments that your code integrates with. There are several ways to deal with this in ruby.
File.chmod(400, "test.pem")

space age exercism problem metaprogramming solution

Aggregated Timer

find alphabetical lists of things in code

hash_initializer

ensuring that class names match file names

git permissions and how to fix them in ruby for ssh testing
commandline = "sftp -q -i #{private_key} -P #{port} #{user}@#{host} > /dev/null 2>&1 << #{remote_cmd_with_heredoc}"
FileUtils.chmod(0400, 'filepath')

gem "gemname", :git => "git@github.com:me/yourapp.git", :ref => "<ref>"

ruby
named parameters
assign all from hash to instance variables
polymorphic database example


ALL = [ A = B, C = D] in module
sanity spec
rake_commit and workflows

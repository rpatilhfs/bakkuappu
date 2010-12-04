# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{bakkuappu}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Timothy Cardenas"]
  s.date = %q{2010-12-04}
  s.description = %q{All of the heroku automated backup solutions for s3 either are outdated or
                      sadly very unreliable. This gem makes NO use of the tmp folder on heroku as
                      doing so opens up the possibility of corrupted backups should heroku decide
                      to clear it when you are backing up. It also scales to larger databases as
                      solutions using heroku's tmp folders don't have any clue how large that directory
                      is or when backups will fail because of size limitations.

                      Instead of downloading the whole backup in one big download and storing to tmp
                      we instead use Net:Http and its lower level interfaces to get data and send data
                      in ordered chunks using Amazon's multipart upload rest api.}
  s.email = %q{trcarden@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/bakkuappu.rb",
    "lib/bakkuappu/configuration.rb",
    "lib/bakkuappu/multipart_s3_backup.rb",
    "lib/bakkuappu/railtie.rb",
    "lib/bakkuappu/tasks.rb",
    "lib/generators/bakkuappu.example.rb",
    "lib/generators/initializer_generator.rb",
    "lib/tasks/heroku.rake",
    "test/helper.rb",
    "test/test_bakkuappu.rb",
    "test/test_configuration.example.rb"
  ]
  s.homepage = %q{http://github.com/mrich54907/bakkuappu}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Safe reliable streaming S3 backups of your heroku db}
  s.test_files = [
    "test/helper.rb",
    "test/test_bakkuappu.rb",
    "test/test_configuration.example.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<fog>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<heroku>, [">= 0"])
      s.add_runtime_dependency(%q<fog>, ["> 0.3.25"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_development_dependency(%q<heroku>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_dependency(%q<fog>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<heroku>, [">= 0"])
      s.add_dependency(%q<fog>, ["> 0.3.25"])
      s.add_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_dependency(%q<heroku>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3.0.0"])
    s.add_dependency(%q<fog>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<heroku>, [">= 0"])
    s.add_dependency(%q<fog>, ["> 0.3.25"])
    s.add_dependency(%q<activesupport>, [">= 3.0.0"])
    s.add_dependency(%q<heroku>, [">= 0"])
  end
end

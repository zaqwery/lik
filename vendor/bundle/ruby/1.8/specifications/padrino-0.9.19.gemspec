# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{padrino}
  s.version = "0.9.19"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Padrino Team", "Nathan Esquenazi", "Davide D'Agostino", "Arthur Chiu"]
  s.date = %q{2010-11-17}
  s.description = %q{The Godfather of Sinatra provides a full-stack agnostic framework on top of Sinatra}
  s.email = %q{padrinorb@gmail.com}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = [".document", ".gitignore", "LICENSE", "README.rdoc", "Rakefile", "padrino.gemspec", "lib/padrino.rb", "test/helper.rb", "test/test_padrino.rb"]
  s.homepage = %q{http://www.padrinorb.com}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{padrino}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{The Godfather of Sinatra}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<padrino-core>, ["= 0.9.19"])
      s.add_runtime_dependency(%q<padrino-helpers>, ["= 0.9.19"])
      s.add_runtime_dependency(%q<padrino-mailer>, ["= 0.9.19"])
      s.add_runtime_dependency(%q<padrino-gen>, ["= 0.9.19"])
      s.add_runtime_dependency(%q<padrino-admin>, ["= 0.9.19"])
    else
      s.add_dependency(%q<padrino-core>, ["= 0.9.19"])
      s.add_dependency(%q<padrino-helpers>, ["= 0.9.19"])
      s.add_dependency(%q<padrino-mailer>, ["= 0.9.19"])
      s.add_dependency(%q<padrino-gen>, ["= 0.9.19"])
      s.add_dependency(%q<padrino-admin>, ["= 0.9.19"])
    end
  else
    s.add_dependency(%q<padrino-core>, ["= 0.9.19"])
    s.add_dependency(%q<padrino-helpers>, ["= 0.9.19"])
    s.add_dependency(%q<padrino-mailer>, ["= 0.9.19"])
    s.add_dependency(%q<padrino-gen>, ["= 0.9.19"])
    s.add_dependency(%q<padrino-admin>, ["= 0.9.19"])
  end
end

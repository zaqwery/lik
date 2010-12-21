# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{padrino-core}
  s.version = "0.9.19"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Padrino Team", "Nathan Esquenazi", "Davide D'Agostino", "Arthur Chiu"]
  s.date = %q{2010-11-17}
  s.default_executable = %q{padrino}
  s.description = %q{The Padrino core gem required for use of this framework}
  s.email = %q{padrinorb@gmail.com}
  s.executables = ["padrino"]
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = [".document", ".gitignore", "LICENSE", "README.rdoc", "Rakefile", "padrino-core.gemspec", "bin/padrino", "lib/padrino-core/application/mounter.rb", "lib/padrino-core/application/rendering.rb", "lib/padrino-core/application/routing.rb", "lib/padrino-core/application/showexceptions.rb", "lib/padrino-core/application.rb", "lib/padrino-core/caller.rb", "lib/padrino-core/cli/adapter.rb", "lib/padrino-core/cli/base.rb", "lib/padrino-core/cli/console.rb", "lib/padrino-core/cli/rake.rb", "lib/padrino-core/command.rb", "lib/padrino-core/images/404.png", "lib/padrino-core/images/500.png", "lib/padrino-core/loader.rb", "lib/padrino-core/locale/cz.yml", "lib/padrino-core/locale/da.yml", "lib/padrino-core/locale/de.yml", "lib/padrino-core/locale/en.yml", "lib/padrino-core/locale/es.yml", "lib/padrino-core/locale/fr.yml", "lib/padrino-core/locale/it.yml", "lib/padrino-core/locale/nl.yml", "lib/padrino-core/locale/no.yml", "lib/padrino-core/locale/pl.yml", "lib/padrino-core/locale/pt_br.yml", "lib/padrino-core/locale/ru.yml", "lib/padrino-core/locale/tr.yml", "lib/padrino-core/locale/uk.yml", "lib/padrino-core/logger.rb", "lib/padrino-core/reloader.rb", "lib/padrino-core/router.rb", "lib/padrino-core/server.rb", "lib/padrino-core/support_lite.rb", "lib/padrino-core/tasks.rb", "lib/padrino-core/version.rb", "lib/padrino-core.rb", "test/fixtures/apps/complex.rb", "test/fixtures/apps/simple.rb", "test/fixtures/dependencies/a.rb", "test/fixtures/dependencies/b.rb", "test/fixtures/dependencies/c.rb", "test/fixtures/dependencies/d.rb", "test/helper.rb", "test/test_application.rb", "test/test_core.rb", "test/test_dependencies.rb", "test/test_logger.rb", "test/test_mounter.rb", "test/test_reloader_complex.rb", "test/test_reloader_simple.rb", "test/test_rendering.rb", "test/test_router.rb", "test/test_routing.rb", "test/test_server.rb", "test/tmp/cache/%2Ffoo"]
  s.homepage = %q{http://www.padrinorb.com}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{padrino-core}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{The required Padrino core gem}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>, [">= 1.1.0"])
      s.add_runtime_dependency(%q<http_router>, ["~> 0.4.0"])
      s.add_runtime_dependency(%q<thor>, [">= 0.14.3"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<tzinfo>, [">= 0"])
    else
      s.add_dependency(%q<sinatra>, [">= 1.1.0"])
      s.add_dependency(%q<http_router>, ["~> 0.4.0"])
      s.add_dependency(%q<thor>, [">= 0.14.3"])
      s.add_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_dependency(%q<tzinfo>, [">= 0"])
    end
  else
    s.add_dependency(%q<sinatra>, [">= 1.1.0"])
    s.add_dependency(%q<http_router>, ["~> 0.4.0"])
    s.add_dependency(%q<thor>, [">= 0.14.3"])
    s.add_dependency(%q<activesupport>, [">= 3.0.0"])
    s.add_dependency(%q<tzinfo>, [">= 0"])
  end
end

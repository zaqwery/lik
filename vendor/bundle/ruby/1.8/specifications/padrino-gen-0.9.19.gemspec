# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{padrino-gen}
  s.version = "0.9.19"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Padrino Team", "Nathan Esquenazi", "Davide D'Agostino", "Arthur Chiu"]
  s.date = %q{2010-11-17}
  s.default_executable = %q{padrino-gen}
  s.description = %q{Generators for easily creating and building padrino applications from the console}
  s.email = %q{padrinorb@gmail.com}
  s.executables = ["padrino-gen"]
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = [".document", ".gitignore", "LICENSE", "README.rdoc", "Rakefile", "padrino-gen.gemspec", "bin/padrino-gen", "lib/padrino-gen/command.rb", "lib/padrino-gen/generators/actions.rb", "lib/padrino-gen/generators/app/app.rb.tt", "lib/padrino-gen/generators/app.rb", "lib/padrino-gen/generators/cli.rb", "lib/padrino-gen/generators/components/actions.rb", "lib/padrino-gen/generators/components/mocks/mocha.rb", "lib/padrino-gen/generators/components/mocks/rr.rb", "lib/padrino-gen/generators/components/orms/activerecord.rb", "lib/padrino-gen/generators/components/orms/couchrest.rb", "lib/padrino-gen/generators/components/orms/datamapper.rb", "lib/padrino-gen/generators/components/orms/mongoid.rb", "lib/padrino-gen/generators/components/orms/mongomapper.rb", "lib/padrino-gen/generators/components/orms/mongomatic.rb", "lib/padrino-gen/generators/components/orms/ohm.rb", "lib/padrino-gen/generators/components/orms/sequel.rb", "lib/padrino-gen/generators/components/renderers/erb.rb", "lib/padrino-gen/generators/components/renderers/erubis.rb", "lib/padrino-gen/generators/components/renderers/haml.rb", "lib/padrino-gen/generators/components/renderers/liquid.rb", "lib/padrino-gen/generators/components/scripts/dojo.rb", "lib/padrino-gen/generators/components/scripts/extcore.rb", "lib/padrino-gen/generators/components/scripts/jquery.rb", "lib/padrino-gen/generators/components/scripts/mootools.rb", "lib/padrino-gen/generators/components/scripts/prototype.rb", "lib/padrino-gen/generators/components/scripts/rightjs.rb", "lib/padrino-gen/generators/components/stylesheets/compass/application.scss", "lib/padrino-gen/generators/components/stylesheets/compass/partials/_base.scss", "lib/padrino-gen/generators/components/stylesheets/compass.rb", "lib/padrino-gen/generators/components/stylesheets/less.rb", "lib/padrino-gen/generators/components/stylesheets/sass.rb", "lib/padrino-gen/generators/components/stylesheets/scss.rb", "lib/padrino-gen/generators/components/tests/bacon.rb", "lib/padrino-gen/generators/components/tests/cucumber.rb", "lib/padrino-gen/generators/components/tests/riot.rb", "lib/padrino-gen/generators/components/tests/rspec.rb", "lib/padrino-gen/generators/components/tests/rspec1.rb", "lib/padrino-gen/generators/components/tests/shoulda.rb", "lib/padrino-gen/generators/components/tests/testspec.rb", "lib/padrino-gen/generators/controller.rb", "lib/padrino-gen/generators/mailer.rb", "lib/padrino-gen/generators/migration.rb", "lib/padrino-gen/generators/model.rb", "lib/padrino-gen/generators/plugin.rb", "lib/padrino-gen/generators/project/config/apps.rb.tt", "lib/padrino-gen/generators/project/config/boot.rb", "lib/padrino-gen/generators/project/config.ru", "lib/padrino-gen/generators/project/public/favicon.ico", "lib/padrino-gen/generators/project/public/index.html", "lib/padrino-gen/generators/project.rb", "lib/padrino-gen/generators/runner.rb", "lib/padrino-gen/generators/templates/controller.rb.tt", "lib/padrino-gen/generators/templates/Gemfile.tt", "lib/padrino-gen/generators/templates/helper.rb.tt", "lib/padrino-gen/generators/templates/initializer.rb.tt", "lib/padrino-gen/generators/templates/mailer.rb.tt", "lib/padrino-gen/generators/templates/scripts/dojo.js", "lib/padrino-gen/generators/templates/scripts/ext-core.js", "lib/padrino-gen/generators/templates/scripts/jquery.js", "lib/padrino-gen/generators/templates/scripts/lowpro.js", "lib/padrino-gen/generators/templates/scripts/mootools-core.js", "lib/padrino-gen/generators/templates/scripts/protopak.js", "lib/padrino-gen/generators/templates/scripts/right.js", "lib/padrino-gen/padrino-tasks/activerecord.rb", "lib/padrino-gen/padrino-tasks/datamapper.rb", "lib/padrino-gen/padrino-tasks/mongomapper.rb", "lib/padrino-gen/padrino-tasks/seed.rb", "lib/padrino-gen/padrino-tasks/sequel.rb", "lib/padrino-gen.rb", "test/fixtures/admin_template.rb", "test/fixtures/example_template.rb", "test/fixtures/git_template.rb", "test/fixtures/plugin_template.rb", "test/fixtures/rake_template.rb", "test/helper.rb", "test/test_app_generator.rb", "test/test_cli.rb", "test/test_controller_generator.rb", "test/test_generator.rb", "test/test_mailer_generator.rb", "test/test_migration_generator.rb", "test/test_model_generator.rb", "test/test_plugin_generator.rb", "test/test_project_generator.rb"]
  s.homepage = %q{http://www.padrinorb.com}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{padrino-gen}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Generators for easily creating and building padrino applications}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<padrino-core>, ["= 0.9.19"])
      s.add_runtime_dependency(%q<bundler>, [">= 1.0.2"])
      s.add_runtime_dependency(%q<git>, [">= 0"])
    else
      s.add_dependency(%q<padrino-core>, ["= 0.9.19"])
      s.add_dependency(%q<bundler>, [">= 1.0.2"])
      s.add_dependency(%q<git>, [">= 0"])
    end
  else
    s.add_dependency(%q<padrino-core>, ["= 0.9.19"])
    s.add_dependency(%q<bundler>, [">= 1.0.2"])
    s.add_dependency(%q<git>, [">= 0"])
  end
end

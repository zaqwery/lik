# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{padrino-admin}
  s.version = "0.9.19"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Padrino Team", "Nathan Esquenazi", "Davide D'Agostino", "Arthur Chiu"]
  s.date = %q{2010-11-17}
  s.description = %q{Admin View for Padrino applications}
  s.email = %q{padrinorb@gmail.com}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = [".document", ".gitignore", "LICENSE", "README.rdoc", "Rakefile", "padrino-admin.gemspec", "lib/padrino-admin/access_control.rb", "lib/padrino-admin/generators/actions.rb", "lib/padrino-admin/generators/admin_app.rb", "lib/padrino-admin/generators/admin_page.rb", "lib/padrino-admin/generators/orm.rb", "lib/padrino-admin/generators/templates/account/activerecord.rb.tt", "lib/padrino-admin/generators/templates/account/couchrest.rb.tt", "lib/padrino-admin/generators/templates/account/datamapper.rb.tt", "lib/padrino-admin/generators/templates/account/mongoid.rb.tt", "lib/padrino-admin/generators/templates/account/mongomapper.rb.tt", "lib/padrino-admin/generators/templates/account/seeds.rb.tt", "lib/padrino-admin/generators/templates/account/sequel.rb.tt", "lib/padrino-admin/generators/templates/app/app.rb", "lib/padrino-admin/generators/templates/app/controllers/base.rb", "lib/padrino-admin/generators/templates/app/controllers/sessions.rb", "lib/padrino-admin/generators/templates/assets/stylesheets/base.css", "lib/padrino-admin/generators/templates/assets/stylesheets/themes/amro/style.css", "lib/padrino-admin/generators/templates/assets/stylesheets/themes/bec/style.css", "lib/padrino-admin/generators/templates/assets/stylesheets/themes/bec-green/style.css", "lib/padrino-admin/generators/templates/assets/stylesheets/themes/blue/style.css", "lib/padrino-admin/generators/templates/assets/stylesheets/themes/default/style.css", "lib/padrino-admin/generators/templates/assets/stylesheets/themes/djime-cerulean/style.css", "lib/padrino-admin/generators/templates/assets/stylesheets/themes/kathleene/style.css", "lib/padrino-admin/generators/templates/assets/stylesheets/themes/olive/style.css", "lib/padrino-admin/generators/templates/assets/stylesheets/themes/orange/style.css", "lib/padrino-admin/generators/templates/assets/stylesheets/themes/reidb-greenish/style.css", "lib/padrino-admin/generators/templates/assets/stylesheets/themes/ruby/style.css", "lib/padrino-admin/generators/templates/assets/stylesheets/themes/warehouse/style.css", "lib/padrino-admin/generators/templates/erb/app/base/_sidebar.erb.tt", "lib/padrino-admin/generators/templates/erb/app/base/index.erb.tt", "lib/padrino-admin/generators/templates/erb/app/layouts/application.erb.tt", "lib/padrino-admin/generators/templates/erb/app/sessions/new.erb.tt", "lib/padrino-admin/generators/templates/erb/page/_form.erb.tt", "lib/padrino-admin/generators/templates/erb/page/edit.erb.tt", "lib/padrino-admin/generators/templates/erb/page/index.erb.tt", "lib/padrino-admin/generators/templates/erb/page/new.erb.tt", "lib/padrino-admin/generators/templates/haml/app/base/_sidebar.haml.tt", "lib/padrino-admin/generators/templates/haml/app/base/index.haml.tt", "lib/padrino-admin/generators/templates/haml/app/layouts/application.haml.tt", "lib/padrino-admin/generators/templates/haml/app/sessions/new.haml.tt", "lib/padrino-admin/generators/templates/haml/page/_form.haml.tt", "lib/padrino-admin/generators/templates/haml/page/edit.haml.tt", "lib/padrino-admin/generators/templates/haml/page/index.haml.tt", "lib/padrino-admin/generators/templates/haml/page/new.haml.tt", "lib/padrino-admin/generators/templates/page/controller.rb.tt", "lib/padrino-admin/helpers/authentication_helpers.rb", "lib/padrino-admin/helpers/view_helpers.rb", "lib/padrino-admin/locale/admin/cz.yml", "lib/padrino-admin/locale/admin/da.yml", "lib/padrino-admin/locale/admin/de.yml", "lib/padrino-admin/locale/admin/en.yml", "lib/padrino-admin/locale/admin/es.yml", "lib/padrino-admin/locale/admin/fr.yml", "lib/padrino-admin/locale/admin/it.yml", "lib/padrino-admin/locale/admin/nl.yml", "lib/padrino-admin/locale/admin/no.yml", "lib/padrino-admin/locale/admin/pl.yml", "lib/padrino-admin/locale/admin/pt_br.yml", "lib/padrino-admin/locale/admin/ru.yml", "lib/padrino-admin/locale/admin/tr.yml", "lib/padrino-admin/locale/admin/uk.yml", "lib/padrino-admin/locale/orm/cz.yml", "lib/padrino-admin/locale/orm/da.yml", "lib/padrino-admin/locale/orm/de.yml", "lib/padrino-admin/locale/orm/en.yml", "lib/padrino-admin/locale/orm/es.yml", "lib/padrino-admin/locale/orm/fr.yml", "lib/padrino-admin/locale/orm/it.yml", "lib/padrino-admin/locale/orm/nl.yml", "lib/padrino-admin/locale/orm/no.yml", "lib/padrino-admin/locale/orm/pl.yml", "lib/padrino-admin/locale/orm/pt_br.yml", "lib/padrino-admin/locale/orm/ru.yml", "lib/padrino-admin/locale/orm/tr.yml", "lib/padrino-admin/locale/orm/uk.yml", "lib/padrino-admin/utils/crypt.rb", "lib/padrino-admin.rb", "test/fixtures/data_mapper.rb", "test/generators/test_admin_app_generator.rb", "test/generators/test_admin_page_generator.rb", "test/helper.rb", "test/test_admin_application.rb"]
  s.homepage = %q{http://www.padrinorb.com}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{padrino-admin}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Admin Dashboard for Padrino}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<padrino-core>, ["= 0.9.19"])
      s.add_runtime_dependency(%q<padrino-helpers>, ["= 0.9.19"])
    else
      s.add_dependency(%q<padrino-core>, ["= 0.9.19"])
      s.add_dependency(%q<padrino-helpers>, ["= 0.9.19"])
    end
  else
    s.add_dependency(%q<padrino-core>, ["= 0.9.19"])
    s.add_dependency(%q<padrino-helpers>, ["= 0.9.19"])
  end
end

# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{padrino-helpers}
  s.version = "0.9.19"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Padrino Team", "Nathan Esquenazi", "Davide D'Agostino", "Arthur Chiu"]
  s.date = %q{2010-11-17}
  s.description = %q{Tag helpers, asset helpers, form helpers, form builders and many more helpers for padrino}
  s.email = %q{padrinorb@gmail.com}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = [".document", ".gitignore", "LICENSE", "README.rdoc", "Rakefile", "padrino-helpers.gemspec", "lib/padrino-helpers/asset_tag_helpers.rb", "lib/padrino-helpers/dom_helpers.rb", "lib/padrino-helpers/form_builder/abstract_form_builder.rb", "lib/padrino-helpers/form_builder/standard_form_builder.rb", "lib/padrino-helpers/form_helpers.rb", "lib/padrino-helpers/format_helpers.rb", "lib/padrino-helpers/locale/cz.yml", "lib/padrino-helpers/locale/da.yml", "lib/padrino-helpers/locale/de.yml", "lib/padrino-helpers/locale/en.yml", "lib/padrino-helpers/locale/es.yml", "lib/padrino-helpers/locale/fr.yml", "lib/padrino-helpers/locale/it.yml", "lib/padrino-helpers/locale/nl.yml", "lib/padrino-helpers/locale/no.yml", "lib/padrino-helpers/locale/pl.yml", "lib/padrino-helpers/locale/pt_br.yml", "lib/padrino-helpers/locale/ru.yml", "lib/padrino-helpers/locale/tr.yml", "lib/padrino-helpers/locale/uk.yml", "lib/padrino-helpers/number_helpers.rb", "lib/padrino-helpers/output_helpers.rb", "lib/padrino-helpers/render_helpers.rb", "lib/padrino-helpers/tag_helpers.rb", "lib/padrino-helpers/translation_helpers.rb", "lib/padrino-helpers.rb", "test/fixtures/markup_app/app.rb", "test/fixtures/markup_app/views/capture_concat.erb", "test/fixtures/markup_app/views/capture_concat.haml", "test/fixtures/markup_app/views/content_for.erb", "test/fixtures/markup_app/views/content_for.haml", "test/fixtures/markup_app/views/content_tag.erb", "test/fixtures/markup_app/views/content_tag.haml", "test/fixtures/markup_app/views/fields_for.erb", "test/fixtures/markup_app/views/fields_for.haml", "test/fixtures/markup_app/views/form_for.erb", "test/fixtures/markup_app/views/form_for.haml", "test/fixtures/markup_app/views/form_tag.erb", "test/fixtures/markup_app/views/form_tag.haml", "test/fixtures/markup_app/views/link_to.erb", "test/fixtures/markup_app/views/link_to.haml", "test/fixtures/markup_app/views/mail_to.erb", "test/fixtures/markup_app/views/mail_to.haml", "test/fixtures/markup_app/views/meta_tag.erb", "test/fixtures/markup_app/views/meta_tag.haml", "test/fixtures/render_app/app.rb", "test/fixtures/render_app/views/erb/test.erb", "test/fixtures/render_app/views/haml/test.haml", "test/fixtures/render_app/views/template/_user.haml", "test/fixtures/render_app/views/template/haml_template.haml", "test/fixtures/render_app/views/template/some_template.haml", "test/helper.rb", "test/test_asset_tag_helpers.rb", "test/test_dom_helpers.rb", "test/test_form_builder.rb", "test/test_form_helpers.rb", "test/test_format_helpers.rb", "test/test_number_helpers.rb", "test/test_output_helpers.rb", "test/test_render_helpers.rb", "test/test_tag_helpers.rb"]
  s.homepage = %q{http://www.padrinorb.com}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{padrino-helpers}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Helpers for padrino}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<padrino-core>, ["= 0.9.19"])
      s.add_runtime_dependency(%q<i18n>, [">= 0.4.1"])
    else
      s.add_dependency(%q<padrino-core>, ["= 0.9.19"])
      s.add_dependency(%q<i18n>, [">= 0.4.1"])
    end
  else
    s.add_dependency(%q<padrino-core>, ["= 0.9.19"])
    s.add_dependency(%q<i18n>, [">= 0.4.1"])
  end
end

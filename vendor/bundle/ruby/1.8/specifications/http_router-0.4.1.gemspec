# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{http_router}
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joshua Hull"]
  s.date = %q{2010-10-18}
  s.description = %q{This library allows you to recognize and build URLs in a Rack application. As well it contains an interface for use within Sinatra.}
  s.email = %q{joshbuddy@gmail.com}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = [".gitignore", ".rspec", "CHANGELOG", "Gemfile", "README.rdoc", "Rakefile", "benchmarks/gen2.rb", "benchmarks/generation_bm.rb", "benchmarks/rack_mount.rb", "benchmarks/rack_recognition_bm.rb", "benchmarks/rec2.rb", "benchmarks/recognition_bm.rb", "examples/glob.ru", "examples/middleware.ru", "examples/rack_mapper.ru", "examples/simple.ru", "examples/static/config.ru", "examples/static/favicon.ico", "examples/static/images/cat1.jpg", "examples/static/images/cat2.jpg", "examples/static/images/cat3.jpg", "examples/unnamed_variable.ru", "examples/variable.ru", "examples/variable_with_regex.ru", "http_router.gemspec", "lib/http_router.rb", "lib/http_router/glob.rb", "lib/http_router/interface/sinatra.rb", "lib/http_router/node.rb", "lib/http_router/optional_compiler.rb", "lib/http_router/parts.rb", "lib/http_router/path.rb", "lib/http_router/rack.rb", "lib/http_router/rack/builder.rb", "lib/http_router/rack/url_map.rb", "lib/http_router/response.rb", "lib/http_router/root.rb", "lib/http_router/route.rb", "lib/http_router/variable.rb", "lib/http_router/version.rb", "spec/generate_spec.rb", "spec/misc_spec.rb", "spec/mounting_spec.rb", "spec/rack/dispatch_spec.rb", "spec/rack/generate_spec.rb", "spec/rack/middleware_spec.rb", "spec/rack/route_spec.rb", "spec/rack/urlmap_spec.rb", "spec/recognize_spec.rb", "spec/sinatra/recognize_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{http://github.com/joshbuddy/http_router}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{http_router}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A kick-ass HTTP router for use in Rack & Sinatra}
  s.test_files = ["spec/generate_spec.rb", "spec/misc_spec.rb", "spec/mounting_spec.rb", "spec/rack/dispatch_spec.rb", "spec/rack/generate_spec.rb", "spec/rack/middleware_spec.rb", "spec/rack/route_spec.rb", "spec/rack/urlmap_spec.rb", "spec/recognize_spec.rb", "spec/sinatra/recognize_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, [">= 1.0.0"])
      s.add_runtime_dependency(%q<url_mount>, ["~> 0.2.1"])
      s.add_development_dependency(%q<rspec>, ["~> 2.0.0"])
      s.add_development_dependency(%q<code_stats>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<sinatra>, [">= 0"])
      s.add_development_dependency(%q<rbench>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
    else
      s.add_dependency(%q<rack>, [">= 1.0.0"])
      s.add_dependency(%q<url_mount>, ["~> 0.2.1"])
      s.add_dependency(%q<rspec>, ["~> 2.0.0"])
      s.add_dependency(%q<code_stats>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<sinatra>, [">= 0"])
      s.add_dependency(%q<rbench>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    end
  else
    s.add_dependency(%q<rack>, [">= 1.0.0"])
    s.add_dependency(%q<url_mount>, ["~> 0.2.1"])
    s.add_dependency(%q<rspec>, ["~> 2.0.0"])
    s.add_dependency(%q<code_stats>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<sinatra>, [">= 0"])
    s.add_dependency(%q<rbench>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
  end
end

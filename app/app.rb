class Lik < Padrino::Application
  register Padrino::Mailer
  register Padrino::Helpers
  register SassInitializer
  
  #layout :application 
  
  get :index, :provides => :js do 
    render 'layouts/services'
  end
  
  get :contact do
    render 'contact_form/index'
  end
  
  get :deliver do
    render 'contact_form/confirmation'
  end
  
  get :about do
    render 'layouts/about'
  end   
  
  #set :mailer_defaults, :from => params[:from_email]
  
  
  set :delivery_method, :smtp => { 
    :address              => "smtp.locum.ru",
    :port                 => 25,
    :user_name            => 'lik-contactform@lik.od.ua',
    :password             => 'lik-odessa-disel',
    :authentication       => :plain,
    :enable_starttls_auto => true  
  }

  
  ##
  # Application configuration options
  #
  # set :raise_errors, true     # Show exceptions (default for development)
  # set :public, "foo/bar"      # Location for static assets (default root/public)
  # set :reload, false          # Reload application files (default in development)
  # set :default_builder, "foo" # Set a custom form builder (default 'StandardFormBuilder')
  # set :locale_path, "bar"     # Set path for I18n translations (defaults to app/locale/)
  # enable  :sessions           # Disabled by default
  # disable :flash              # Disables rack-flash (enabled by default if sessions)
  # layout  :my_layout          # Layout can be in views/layouts/foo.ext or views/foo.ext (default :application)
  #

  ##
  # You can configure for a specified environment like:
  #
  #   configure :development do
  #     set :foo, :bar
  #     disable :asset_stamp # no asset timestamping for dev
  #   end
  #

  ##
  # You can manage errors like:
  #
  #   error 404 do
  #     render 'errors/404'
  #   end
  #
end

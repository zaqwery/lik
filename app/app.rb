class Lik < Padrino::Application
  register Padrino::Mailer
  register Padrino::Helpers
  register SassInitializer
  
  set :haml, { :format => :html5 }
  
  get :index, :provides => :js do 
    render 'layouts/services'
  end
  
  get :contact do
    render 'contact_form/index'
  end
  
  get :deliver do
    render 'contact_form/confirmation'
  end
  
  get :deliver_error do
    render 'contact_form/error'
  end
  
  get :about do
    render 'layouts/about'
  end   
  
  set :delivery_method, :smtp => { 
    :address              => "smtp.locum.ru",
    :port                 => 25,
    :user_name            => 'lik-contactform@lik.od.ua',
    :password             => 'lik-odessa-disel',
    :authentication       => :plain,
    :enable_starttls_auto => true  
  }

end

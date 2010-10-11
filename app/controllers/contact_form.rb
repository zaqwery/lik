Lik.controllers :contact_form do 
 
  post :message do 
    message = ["Сообщение с сайта LIK: #{params[:subject]}"]
    body = "Контактные данные :\n 
            Имя: #{params[:name]}, <#{params[:from_email]}>\n 
            Текст сообщения:\n #{params[:body]}"   
    email(:from => params[:from_email], 
          :to => "zaqwery@yahoo.com", 
          :subject => message, 
          :body => body)
    redirect url(:deliver)
    
  end

end
Lik.controllers :contact_form do 
 
  post :message do 
    message = ["Сообщение с сайта LIK: #{params[:subject]}"]
    body = "К нам обратился некий(кая) #{params[:name]}
            И вот что он(она) пишет:\n #{params[:body]} \n
            Ответить ему(ей) можно по оставленному адрессу <#{params[:from_email]}>"   
    email(:from => params[:from_email], 
          :to => "lik.odessa@gmail.com", 
          :subject => message, 
          :body => body)
    redirect url(:deliver)
    
  end

end
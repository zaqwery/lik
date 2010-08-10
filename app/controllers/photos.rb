Lik.controllers :photos do
  # get :index, :map => "/foo/bar" do
  #   session[:foo] = "bar"
  #   render 'index'
  # end

  # get :sample, :map => "/sample/url", :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   "Maps to url '/foo/#{params[:id]}'"
  # end

  # get "/example" do
  #   "Hello world!"
  # end

  get :show, :with => :id do
    @photo = Photo.find(params[:id])
    render 'photos/show'
  end 
  
  get :index, :parent => :projects do
    @photos = Photo.all
    render 'photos/index'
  end

end

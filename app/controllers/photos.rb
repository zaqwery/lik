Lik.controllers :photos do

  get :show, :with => :id do
    @photo = Photo.find(params[:id])
    render 'photos/show'
  end 
  
  get :index do
    @photos = Photo.all
    render 'photos/index'
  end
  
  get :images, :map => 'images/*name' do
    params[:name]['img']
  end

end

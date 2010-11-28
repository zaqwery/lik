Admin.controllers :photos do

  get :new do
    @photo = Photo.new
    render 'photos/new'
  end

  post :create do
    @photo = Photo.new(params[:photo])
    if @photo.save!
    	@project_id = @photo.project_id
      flash[:notice] = 'Изображение успешно создано!'
      redirect url(:projects, :edit, :id => @project_id)
    else
      render 'projects/new'
    end
  end

  get :edit, :with => :id do
    @photo = Photo.find(params[:id])
    render 'photos/edit'
  end

  put :update, :with => :id do
    @photo = Photo.find(params[:id])
    if @photo.update_attributes
      flash[:notice] = 'Изображение успешно обновлено!'
      redirect url(:photos, :edit, :id => @photo.id)
    else
      render 'photos/edit'
    end
  end

  delete :destroy, :with => :id do
    photo = Photo.find(params[:id])
    if photo.destroy 
      @project_id = photo.project_id
      flash[:notice] = 'Изображение удалено!'
      redirect url(:projects, :edit, :id => @project_id)
    else
      flash[:error] = 'Невозможно удалить изображение'
    end
    redirect url(:photos, :index)
  end
end

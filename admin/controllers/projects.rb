Admin.controllers :projects do

  get :index do
    @projects = Project.all
    @photos = Photo.all
    render 'projects/index'
  end

  get :new do
    @project = Project.new
    #@photo = @project.photos
    render 'projects/new'
  end

  post :create do
    @project = Project.new(params[:project])
    #@photo = Photo.new(params[:photo])
    if @project.save
      flash[:notice] = 'Project was successfully created.'
      redirect url(:projects, :edit, :id => @project.id)
    else
      render 'projects/new'
    end
  end

  get :edit, :with => :id do
    @project = Project.find(params[:id])
    #@photo = Photo.new(params[:photo])
    #@photo.project_id = @project.id
    #photo_save
    #if @photo.save
      #flash[:notice] = 'Photo was successfully added.'
      #redirect url(:projects, :edit, :id => @project.id)
   # else
      render 'projects/edit'
    #end
  end

  put :update, :with => :id do
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:notice] = 'Project was successfully updated.'
      redirect url(:projects, :edit, :id => @project.id)
    else
      render 'projects/edit'
    end
  end

  delete :destroy, :with => :id do
    project = Project.find(params[:id])
    if project.destroy
      flash[:notice] = 'Project was successfully destroyed.'
    else
      flash[:error] = 'Impossible destroy Project!'
    end
    redirect url(:projects, :index)
  end
  
  def photo_save 
    if @photo.save
      flash[:notice] = 'Project was successfully created.'
      redirect url(:projects, :edit, :id => @project.id)
    else
      render 'projects/index'
    end
  end
    
end
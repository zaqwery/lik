Admin.controllers :projects do

  get :index do
    @projects = Project.all
    render 'projects/index'
  end

  get :new do
    @project = Project.new
    render 'projects/new'
  end

  post :create do
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = 'Проект успешно добавлен'
      redirect url(:projects, :edit, :id => @project.id)
    else
      render 'projects/new'
    end
  end

  get :edit, :with => :id do
    @project = Project.find(params[:id])
    render 'projects/edit'
  end

  put :update, :with => :id do
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:notice] = 'Проект успешно обновлен'
      redirect url(:projects, :edit, :id => @project.id)
    else
      render 'projects/edit'
    end
  end

  delete :destroy, :with => :id do
    project = Project.find(params[:id])
    if project.destroy
      flash[:notice] = 'Проект удален с сайта'
    else
      flash[:error] = 'Невозможно удалить проект'
    end
    redirect url(:projects, :index)
  end
    
end

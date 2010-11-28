Lik.controllers :projects do

  get :index do
    @projects = Project.all
    render 'projects/index'
  end

  get :show, :map => '/:id-:title' do
    @project = Project.find(params[:id])
    params[:title]
    render 'projects/show'
  end


end

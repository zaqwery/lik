Lik.controllers :projects do

  get :index do
    @projects = []
    Project.all.each do |p|
      @projects << p unless p.photos.empty?
    end
    @sorted_projects = @projects.sort! {|a,b| a.date <=> b.date}
    @sorted_projects.reverse!
    render 'projects/index'
  end

  get :show, :map => '/:id-:title' do
    @project = Project.find(params[:id])
    params[:title]
    render 'projects/show'
  end


end

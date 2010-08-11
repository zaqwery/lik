# Helper methods defined here can be accessed in any controller or view in the application

Lik.helpers do

  def project_thumb
    @project_images = []
    projects = Project.find(:all)
    projects.each do |project|
      @project_images << project.photos.first.image.thumb
    end
  end


end

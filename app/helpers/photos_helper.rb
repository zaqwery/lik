# Helper methods defined here can be accessed in any controller or view in the application

Lik.helpers do

  def project_title
    @title_image = []
    @project = Project.find(params[:id])
    @project.photos.each do |img|
      image = MiniMagick::Image.from_file(img.image.current_path)
      @title_image << img if image[:width] == 384
    end
  end

end

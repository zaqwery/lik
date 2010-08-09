# Helper methods defined here can be accessed in any controller or view in the application

Lik.helpers do

  def project_image
    @project = Project.find(params[:id])
    @photos = @project.photos
    @photos.each do |img|
      image = MiniMagick::Image.from_file(img.image)
      image[:height]
    end
  end

end

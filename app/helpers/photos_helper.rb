Lik.helpers do

  def project_face
    @face_image = []
    project = Project.find(params[:id])
    project.photos.each do |img|
      image = MiniMagick::Image.from_file(img.image.current_path)
      @face_image << img if image[:width] == 384
    end
  end
  
  def lik_face
    @face_images = []
    projects = Project.find(:all)
    projects.each do |project|
      project.photos.each do |img|
        image = MiniMagick::Image.from_file(img.image.current_path)
        @face_images << img if image[:width] == 384
      end
    end
  end
  
end

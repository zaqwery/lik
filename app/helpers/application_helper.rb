Lik.helpers do

  def current_page?(options)
    request.path_info=~/^#{url(options)}$/
  end


end

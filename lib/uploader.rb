class Uploader < CarrierWave::Uploader::Base

include CarrierWave::MiniMagick

storage :file

def root; File.join(Padrino.root,"public/"); end

def store_dir
'images'
end

def cache_dir
Padrino.root("tmp")
end

process :analize
version :thumb do
  process :resize_to_fill => [100, 100]
end

def vert
  
end

def analize

  manipulate! do |img|
    cols, rows = img[:dimensions]
  end
  
  if @cols > @rows
    process :resize_to_fit => [384, 650]
  else
    process :resize_to_fit => [650, 650]
  end  
end

def extension_white_list
%w(jpg jpeg gif png)
end

end

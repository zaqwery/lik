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

process :analyse

def analyse
  manipulate! do |img|
    cols, rows = img[:dimensions]
    if cols > rows
      cols = 650
      rows = 650
      img.resize "#{cols}x#{rows}"
    else
      cols = 384
      rows = 650
      img.resize "#{cols}x#{rows}"
    end
    img = yield(img) if block_given?
    img  
  end  
end
  
version :thumb do
  process :resize_to_fill => [100, 100]
end 


def extension_white_list
%w(jpg jpeg gif png)
end

end

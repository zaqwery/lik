class Photo < ActiveRecord::Base 
  
  require 'carrierwave/orm/activerecord'
  mount_uploader :image, Uploader
        
  belongs_to :project

end

class Photo < ActiveRecord::Base 
  
  require 'carrierwave/orm/activerecord'
  mount_uploader :image, Uploader
        
  #attr_accessor :image
  belongs_to :project

end

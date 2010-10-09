class Partner < ActiveRecord::Base     
  
  require 'carrierwave/orm/activerecord'
  mount_uploader :image, PartnersUpldr

end

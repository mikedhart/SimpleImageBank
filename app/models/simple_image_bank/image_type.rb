module SimpleImageBank
  class ImageType < ActiveRecord::Base
    attr_accessible :image_type_name
    has_many :images
  end
end

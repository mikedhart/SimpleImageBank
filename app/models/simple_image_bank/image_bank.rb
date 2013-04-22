module SimpleImageBank
  class ImageBank < ActiveRecord::Base
    attr_accessible :image_bank_description, :image_bank_name, :user_id

    has_many :images
  end
end

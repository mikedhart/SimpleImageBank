module SimpleImageBank
  class Image < ActiveRecord::Base
    attr_accessible :image, :image_bank_id
    has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    belongs_to :image_bank
    belongs_to :image_type
  end
end

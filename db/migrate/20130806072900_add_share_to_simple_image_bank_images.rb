class AddShareToSimpleImageBankImages < ActiveRecord::Migration
  def change
    add_column :simple_image_bank_images, :share, :boolean, :default => false
  end
end

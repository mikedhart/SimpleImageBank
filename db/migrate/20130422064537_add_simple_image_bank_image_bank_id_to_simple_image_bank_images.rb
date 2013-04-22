class AddSimpleImageBankImageBankIdToSimpleImageBankImages < ActiveRecord::Migration
  def change
    add_column :simple_image_bank_images, :simple_image_bank_id, :integer
  end
end

class CreateSimpleImageBankImageBanks < ActiveRecord::Migration
  def change
    create_table :simple_image_bank_image_banks do |t|
      t.integer :user_id
      t.string :image_bank_name
      t.text :image_bank_description

      t.timestamps
    end
  end
end

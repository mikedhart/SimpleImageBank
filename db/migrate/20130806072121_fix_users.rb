class FixUsers < ActiveRecord::Migration
  def change
  	remove_column :simple_image_bank_image_banks, :user_id
  end
end

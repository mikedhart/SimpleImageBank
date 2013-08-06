class AddForeignIdToSimpleImageBankImageBanks < ActiveRecord::Migration
  def change
    add_column :simple_image_bank_image_banks, :foreign_id, :integer
  end
end

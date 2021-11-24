class AddAddressesToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :address, :text
  end
end

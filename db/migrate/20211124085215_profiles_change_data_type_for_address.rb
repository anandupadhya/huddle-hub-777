class ProfilesChangeDataTypeForAddress < ActiveRecord::Migration[6.0]
  def change
    change_column :profiles, :address, :string
  end
end

class AddAddressToHouse < ActiveRecord::Migration[5.2]
  def change
    add_column(:houses, :address, :string, null:false)
  end
end

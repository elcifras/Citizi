class AddHotelNameToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :hotel_name, :string
  end
end

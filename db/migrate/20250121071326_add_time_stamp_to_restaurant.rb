class AddTimeStampToRestaurant < ActiveRecord::Migration[8.0]
  def change
    add_column :restaurants, :created_at, :datetime
  end
end

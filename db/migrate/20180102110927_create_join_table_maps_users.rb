class CreateJoinTableMapsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table 'maps_users' do |t|
      t.integer :map_id
      t.integer :user_id
    end
  end
end

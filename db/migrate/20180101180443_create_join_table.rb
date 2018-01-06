class CreateJoinTable < ActiveRecord::Migration[5.0]
  def change
     create_table 'maps_matches' do |t|
      t.integer :map_id
      t.integer :match_id
    end
  end
end

class CreateJoinTableMapsMatches < ActiveRecord::Migration[5.0]
  def change
    create_join_table :maps, :matches do |t|
      t.index [:map_id, :match_id]
      t.index [:match_id, :map_id]
      t.index [:match_id, :map_title]
      t.index [:match_id, :map_image]
    end
  end
end

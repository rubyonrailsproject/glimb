class AddTitleToMaps < ActiveRecord::Migration[5.0]
  def change
    add_column :maps, :title, :string
  end
end

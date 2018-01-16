class AddPlayernameToNeuros < ActiveRecord::Migration[5.0]
  def change
    add_column :neuros, :playername, :string
  end
end

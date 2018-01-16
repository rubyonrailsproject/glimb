class AddResult1ToNeuros < ActiveRecord::Migration[5.0]
  def change
    add_column :neuros, :result1, :int
  end
end

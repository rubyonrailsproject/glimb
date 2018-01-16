class AddResult2ToNeuros < ActiveRecord::Migration[5.0]
  def change
    add_column :neuros, :result2, :int
  end
end

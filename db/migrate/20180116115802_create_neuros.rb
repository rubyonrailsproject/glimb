class CreateNeuros < ActiveRecord::Migration[5.0]
  def change
    create_table :neuros do |t|

      t.timestamps
    end
  end
end

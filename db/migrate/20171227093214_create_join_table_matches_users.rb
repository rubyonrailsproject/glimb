class CreateJoinTableMatchesUsers < ActiveRecord::Migration[5.0]
  def change
    create_table 'matches_users' do |t|
      t.integer :match_id
      t.integer :user_id
    end
  end
end

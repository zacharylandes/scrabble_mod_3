class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.references :player_1, foreign_key: { to_table: :users }, index: true
      t.references :player_2, foreign_key: { to_table: :users }, index: true

      t.timestamps
    end
  end
end

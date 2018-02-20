class CreatePlays < ActiveRecord::Migration[5.1]
  def change
    create_table :plays do |t|
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true
      t.string :word
      t.integer :score

      t.timestamps
    end
  end
end

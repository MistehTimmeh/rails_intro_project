class CreateVideoGames < ActiveRecord::Migration[7.1]
  def change
    create_table :video_games do |t|
      t.string :name
      t.date :release_date
      t.text :summary
      t.decimal :metacritic_score
      t.decimal :user_score
      t.references :publisher, null: false, foreign_key: true
      t.references :developer, null: false, foreign_key: true
      t.references :platform, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :song_url
      t.string :album
      t.integer :year
      t.integer :user_id

      t.timestamps
    end
  end
end

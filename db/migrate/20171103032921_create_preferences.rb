class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :artist_sort_order, default: 'DESC'
      t.string :song_sort_order, default: 'ASC'
      t.boolean :allow_create_artists, default: false
      t.boolean :allow_create_songs, default: true

      t.timestamps null: false
    end
  end
end

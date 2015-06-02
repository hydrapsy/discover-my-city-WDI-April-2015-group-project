class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :name
      t.string :artist
      t.string :location
      t.string :history
      t.string :comments
      t.string :art_id

      t.timestamps null: false
    end
  end
end

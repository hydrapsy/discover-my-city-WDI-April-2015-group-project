class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :name
      t.string :artist
      t.string :location
<<<<<<< HEAD
      t.string :history
      t.string :comments
      t.string :art_id

=======
      t.text :history
      t.attachment :avatar
      t.integer :art_id
>>>>>>> 5c75b7576eea74bf6ba4640e96a7abded8433bf8
      t.timestamps null: false
    end
  end
end

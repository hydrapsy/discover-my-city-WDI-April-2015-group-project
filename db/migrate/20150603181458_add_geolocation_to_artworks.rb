class AddGeolocationToArtworks < ActiveRecord::Migration
  def change
  	add_column :artworks, :lat, :float
  	add_column :artworks, :lng, :float
  end
end

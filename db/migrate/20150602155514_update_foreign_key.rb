class UpdateForeignKey < ActiveRecord::Migration
  def change
  	add_column :artworks, :artwork_id, :integer  
  	remove_column :artworks, :art_id, :integer 
  end
end

class MapController < ApplicationController
  def index
  	@artworks = [
	      {
	        "lat": 40.762288,
	        "lng": -73.972361,
	        "infowindow": "saurien"
	      }
	    ]
  end
end

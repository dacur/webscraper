class DataController < ApplicationController
require 'open-uri'

  def index
    # url = http://surfapp.sbox.es/api/getForecastNOAA/?lat=36.623798&lon=-121.935997
    url = "http://smashingboxes.com/"
    doc = Nokogiri::HTML(open(url))
    @data = doc.at_css("title").text
    render :index
  end
end

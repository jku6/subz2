class SubwaysController < ApplicationController



    def new
    end

    

    def create

      #   # This is the added code
      #   place = Geocoder.search(params[:vacation][:name])
      #   lat = place[0].latitude
      #   long = place[0].longitude
      #   addr = place[0].address

      if Subway.blank?

      x = HTTParty.get('http://data.cityofnewyork.us/api/views/drex-xx56/rows.json')
      y = JSON(x.body)


      z = y["data"].length

      z.times do |a|
      @lat = y["data"][a][9][1]
      @long = y["data"][a][9][2]
      @line = y["data"][a][12]
      @name = y["data"][a][10]



      @subway = Subway.create(name: @name, lat: @lat, long: @long, line: @line)
      end
      end
      @subways = Subway.all


    end

    def search


      query = params[:query]
      if query.present?
        @subways = Subway.text_search(query)
      else
        @subways = Subway.all
      end
  
    end

end
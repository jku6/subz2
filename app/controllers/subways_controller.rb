class SubwaysController < ApplicationController



    def new
    end

    def create

      #   # This is the added code
      #   place = Geocoder.search(params[:vacation][:name])
      #   lat = place[0].latitude
      #   long = place[0].longitude
      #   addr = place[0].address

      #   @subway = Subway.new
      #   @subway.name = addr
      #   @subway.lat = lat
      #   @subway.long = long
      #   @subway.line = line
      #   # code


        


      #   respond_to do |format|
      #     if @subway.save
      #       format.html { redirect_to @, notice: 'Vacation was successfully created.' }
      #       format.json { render json: @vacation, status: :created, location: @vacation }
      #     else
      #       format.html { render action: "new" }
      #       format.json { render json: @vacation.errors, status: :unprocessable_entity }
      #     end
      #   end
      # end

    end

end
class RidersController < Sinatra::Base

    get "/riders" do
        riders = Rider.all
        riders.to_json include: :bike_rides
        # riders.to_json(methods: [:bike_rides])
    end

    post "/riders" do
      rider = Rider.create(
        name: params[:name]
      )
      rider.to_json
    end

end
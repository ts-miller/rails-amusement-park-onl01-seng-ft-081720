class RidesController < ApplicationController

    def create
        ride = Ride.new(ride_params)
        alert = ride.take_ride
        redirect_to user_path(session[:user_id]), notice: alert

    end

    private

    def ride_params
        params.require(:ride).permit(:attraction_id, :user_id)
    end

end

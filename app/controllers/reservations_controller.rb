class ReservationsController < ApplicationController
  def index
    @user = current_user
    @reservations = Reservation.all
    @hotels = Hotel.all
  end
  
  def new
    @user = current_user
    @reservation = Reservation.new
  end
  
  def confirm
    @user = current_user
    @reservation = Reservation.new(params.require(:reservation).permit(:start_day, :finish_day, :number_of_people, :days_of_use, :hotel_id))
    @hotel = Hotel.find(params[:reservation][:hotel_id])
  end
  
  def create
    @user = current_user
    @reservation = Reservation.new(params.require(:reservation).permit(:start_day, :finish_day, :number_of_people, :days_of_use, :total_fee, :user_id, :hotel_id))
    @hotel = Hotel.find(params[:reservation][:hotel_id])
    @reservation.save
  end
  

end

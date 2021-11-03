class HotelsController < ApplicationController
  def index
    @user = current_user
    @hotels = Hotel.search(params[:area],params[:keyword])
  end
  
  def new
    @user = current_user
    @hotel = Hotel.new
  end
  
  def show
    @user = current_user
    @hotel = Hotel.find(params[:id])
    @reservation = Reservation.new
  end
  
  def create
    @hotel = Hotel.new(params.require(:hotel).permit(:name, :introduction, :price, :address, :image))
    @hotel.user_id = current_user.id
    @hotel.save
    redirect_to root_path
  end
  
  def posts
     @user = current_user
     @hotels = @user.hotels
  end
  
  
end

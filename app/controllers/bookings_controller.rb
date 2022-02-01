class BookingsController < ApplicationController

  # def index
  #   @bookings = Booking.all
  # end


  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @lesson = Lesson.find(params[:lesson_id])
    @booking.lesson = @lesson
    @booking.user = current_user
    if @booking.save
      redirect_to lesson_path(@lesson)
    else
      render :new
    end
  end
end

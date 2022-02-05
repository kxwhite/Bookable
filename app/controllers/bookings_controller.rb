class BookingsController < ApplicationController
  def index
    @lessons_booked = current_user.bookings
    @lessons_created = current_user.lessons
    @user = current_user
  end

  # def new
  #   @booking = Booking.new
  # end

  def create
    @booking = Booking.new(booking_params)
    @lesson = Lesson.find(params[:lesson_id])
    @booking.lesson = @lesson
    @booking.user = current_user
    if @booking.save
      redirect_to lesson_path(@lesson)
      flash[:notice] = "You have booked #{@lesson.title}"
    else
      render 'lessons/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time)
  end
end

class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update]

  def index
    if params[:query].present?
      @lessons = Lesson.search_by_title(params[:query])
    else
      @lessons = Lesson.all

      @markers = @lessons.geocoded.map do |lesson|
        {
          lat: lesson.latitude,
          lng: lesson.longitude
        }
      end
    end
  end

  def show
    @booking = Booking.new
  end

  def edit; end

  def update
    @lesson.update(lesson_params)
    redirect_to lesson_path(@lesson)
    # flash[:notice] = "You have booked #{@lesson.title}"
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.user = current_user
    @lesson.save!
    if @lesson.save!
      redirect_to lesson_path(@lesson)
    else
      render :new
    end
  end

  private
    def lesson_params
      params.require(:lesson).permit(:title, :description, :location, :date, :time)
    end

    def set_lesson
      @lesson = Lesson.find(params[:id])
    end
end

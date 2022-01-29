class LessonsController < ApplicationController
  def index
    @lessons = Lesson.All
  end
end

class Lesson < ApplicationRecord
  validates :title, :description, :location, :date, :time, presence: true
end

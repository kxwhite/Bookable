class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  validates :date, :time, presence: true
end

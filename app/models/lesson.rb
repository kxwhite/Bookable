class Lesson < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  validates :title, :description, :location, :date, :time, presence: true
end

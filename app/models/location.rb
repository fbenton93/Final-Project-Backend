class Location < ApplicationRecord
  validates :name, length: { minimum: 3 }
  validates :address_line_1, uniqueness: true
  validates :lat, presence: true
  validates :lng, presence: true


  has_many :reviews
  has_many :users, through: :reviews
end

class Review < ApplicationRecord
  validates :title, length: { minimum: 7 }
  validates :written_content, length: { minimum: 120 }

  belongs_to :user
  belongs_to :location
end

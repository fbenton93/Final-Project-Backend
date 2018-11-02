class Location < ApplicationRecord
  validates :name, length: { minimum: 3 }
  validates :address_line_1, uniqueness: true
  validates :lat, presence: true
  validates :lng, presence: true


  has_many :reviews
  has_many :users, through: :reviews


  def averages
    @averages= {}
    @aggregate = {score_busyness: 0,
                score_ambiance: 0,
                score_table_space: 0,
                score_noise_level: 0,
                score_studying: 0,
                score_friendliness: 0,
                score_value: 0,
                score_coffee_quality: 0
    }
    self.reviews.each do |review|
      review.attributes.each do |key,value|
        if @aggregate[key.to_sym]
          @aggregate[key.to_sym] += value
        end
      end
    end

    @aggregate.each do |key,value|
      @averages[key] = (value.to_f / self.reviews.length)
    end

    return @averages

  end




end

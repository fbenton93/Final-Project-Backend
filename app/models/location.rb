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

  def atmospheres
    @counter = {}
    self.reviews.each do |review|
      if @counter[review.atmosphere]
        @counter[review.atmosphere] += 1
      else
        @counter[review.atmosphere] = 1
      end
    end
    return @counter
  end

  def traffic
    # initialize a standard 6AM to 6PM day in half-hour steps
    @day = {}
    hour = 6.0
    while hour <= 18
      @day[hour] = 0
      hour += 0.5
    end

    # make new averages based on the user reviews
    self.reviews.each do |review|
      @day[review.time_visited] += review.score_busyness
    end


    return @day.each {|k,v| @day[k] = (v.to_f / self.reviews.length)}
  end

  def roast
    @responses = {"Under Roasted": 0,
                  "Just Right": 0,
                  "Over Roasted": 0,
                  "Burnt": 0,
                  "Bitter": 0,
                  "Acidic": 0,
                  "Weak": 0,
                  "Delicate": 0,
                  "Strong": 0,
                  "Too Strong": 0
                  }
    self.reviews.each do |review|
        @responses[review.score_roast.to_sym] += 1
    end
    return @responses
  end



end

class Review < ApplicationRecord
  # validates :title, length: { minimum: 7 }
  # validates :written_content, length: { minimum: 120 }
  belongs_to :user
  belongs_to :location

  def self.regional_avg
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

    self.all.each do |review|
      review.attributes.each do |key,value|
        if @aggregate[key.to_sym]
          @aggregate[key.to_sym] += value
        end
      end
    end

    @aggregate.each do |key,value|
      @averages[key] = (value.to_f / self.all.length).round(2)
    end

    return @averages

  end

end

class Api::V1::ReviewsController < ApplicationController
  skip_before_action :authorized

  def create
    @review = Review.new(review_params)
    if @review.save
      render json: @review
    else
      render json: {message: 'unable to process review'}
    end
  end

  private

  def review_params
    params.require(:review).permit(
      :user_id,
      :location_id,
      :img_url,
      :title,
      :written_content,
      :atmosphere,
      :time_visited,
      :score_busyness,
      :score_ambiance,
      :score_table_space,
      :score_noise_level,
      :score_studying,
      :score_friendliness,
      :score_value,
      :score_coffee_quality,
      :score_roast
    )
  end

end

class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def profile
    @reviews = @user.reviews.map do |rev|
      ReviewSerializer.new(rev)
    end
    render json: { user: UserSerializer.new(current_user), reviews: @reviews}, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: @user, jwt: @token, reviews: @user.reviews }, status: :created
    else
      render json: { error: 'failed to create user'}, status: :not_acceptable
    end
  end

  def update
    @user = current_user
    @user.update(user_params)
    render json: { user: UserSerializer.new(@user)}
  end

  private

  def user_params
    params.require(:user).permit(:username,
                                  :password,
                                  :profile_img_url,
                                  :pref_busyness,
                                  :pref_noise_level,
                                  :pref_ambiance,
                                  :pref_coffee_quality,
                                  :pref_light_roast,
                                  :pref_medium_roast,
                                  :pref_dark_roast,
                                  :pref_table_space,
                                  :pref_studying
                                )
  end
end

class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @user = User.find_by(username: user_login_params[:username])
    if @user && @user.authenticate(user_login_params[:password]) && !@user.disabled
      token = encode_token({user_id: @user.id})
      @reviews = @user.reviews.map do |rev|
        ReviewSerializer.new(rev)
      end

      render json: { user: UserSerializer.new(@user), jwt: token, reviews: @reviews }, status: :accepted
    else
      if @user.disabled
        render json: { disabled: true, message: 'account has been deactivated'}
      else
        render json: { disabled: false, message: 'invalid username or password'}, status: :unauthorized
      end
    end
  end

  private

  def user_login_params
    params.require(:user).permit(:username, :password)
  end
end

class UsersController < ApplicationController
  before_action :authorize, only: [:me]

  def create
    user = User.new(user_params)
    if user.save
      token = encode_token({ user_id: user.id })
      render json: { user: user, jwt: token }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def me
    render json: current_user
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end
end

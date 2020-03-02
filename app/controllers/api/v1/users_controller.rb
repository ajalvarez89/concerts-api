class Api::V1::UsersController < ApplicationController
  load_and_authorize_resource class: "User"

  def index
    users = User.all
    render json: users, status: :ok
  end

  def create
    user = User.new(user_params)
    if user.save
        render json: user, status: :ok
    else
        render json: { message: "User was not created" }, status: :unprocessable_entity
    end
  end

  def show
    user = User.find(params[:id])
    permissions = Ability.new(user).list_permissions
    render json: { user: user, permissions: permissions }, status: :ok
  end

  private

  def user_params
    params.permit(:email, :password, :rol_id)
  end
end
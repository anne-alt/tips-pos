class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response


  # GET /users
  def index
    users = User.all
    render json: users
  end

  # POST /users
  def create
    user = User.create(user_params)
    render json: user, status: :created
  end

  # GET /users/:id
  def show
    user = find_user
    render json: user
  end

  # PATCH /users/:id
  def update
    user = find_user
    User.update(user_params)
    render json: user
  end

  # DELETE /users/:id
  def destroy
    user = find_user
    User.destroy
    head :no_content
  end

private

  def user_params
    params.permit(:name, :email, :role)
  end

  def find_user
    User.find(params[:id])
  end

  def render_not_found_response
    render json: { error: "Product not found" }, status: :not_found
  end
end

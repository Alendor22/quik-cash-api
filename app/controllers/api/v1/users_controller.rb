class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users, include: [:transactions]
  end

  # GET /users/1
  def show
    render json: @user, include: [:transactions]
  end

  # POST /users
  def create
    @user = User.create(user_params)

    if @user.valid?
        @user = @user
        token = JWT.encode({user_id: user.id}, secret, 'HS256')
      render json: {user: user, token: token}
      status: :created
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    if  @user.destroy
      render json: {message: "User Deleted"},
      status: 200
    else
      render json {message: "User Failed To Delete"},
      status: :unprocessable_entity
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :password, :location, :bio, :email)
    end
end

class Api::V1::AuthController < ApplicationController
    
  def login
    user = User.find_by(username: login_params[:username])
      if user && user.authenticate(login_params[:password])
        token = JWT.encode({user_id: user.id}, secret, 'HS256')
        render json: {user: user.as_json(except: [:password_digest]), token: token}
      else
        render json: {errors: user.errors.full_messages}
      end
  end

  def persist
    if request.headers['Authorization']
      encoded_token = request.headers['Authorization'].split(' ')[1]
      token = JWT.decode(encoded_token, secret)
      user_id = token[0]['user_id']
      @user = User.find(user_id)
      render json: @user
    end
  end

  private

  def login_params
    params.require(:auth).permit(:username, :password)
  end

end
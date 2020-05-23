class ApplicationController < ActionController::API

  def secret
    ENV["TOKEN_SECRET"]
  end

  def render_unauthorized_response
    if !current_user
    render json: {error: "You must be logged in for that action."},
    status: 401
    end
  end

  def current_user
    if request.headers['Authorization']
      encoded_token = request.headers['Authorization'].split(' ')[1]
      token = JWT.decode(encoded_token, secret)
      user_id = token[0]['user_id']
      @user = User.find_by_id(user_id)
    end
    return @user
  end


end

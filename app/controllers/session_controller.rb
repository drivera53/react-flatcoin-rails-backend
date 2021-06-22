class SessionController < ApplicationController
  def login
    user = User.find_by :email=>params[:email]
    if user && user.authenticate(params[:password])
      payload = {user_id: user.id}
      token = encode_token(payload)
      user_json = user.to_json(:include => [
        :portfolios, :trades])
      render json: {
        user: user_json,
        jwt: token
      }
    else 
      render json: {status: "error", message: "We can't find a user according to your information, please try again."}
    end
  end

  def auto_login
    if session_user
      render json: session_user, include: ['trades', 'portfolios']
    else
      render json: {errors: "No User Logged In!"}
    end
  end
end

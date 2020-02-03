class AuthController < ApplicationController
  # Commented this out because it was causing issues with logging in on the front end:
    # skip_before_action :authorized, only: [:create]
 
    def create
      @user = User.find_by(email: user_login_params[:email])
      #User#authenticate comes from BCrypt
      if @user && @user.authenticate(user_login_params[:password])
        # encode token comes from ApplicationController
        token = encode_token({ user_id: @user.id })
        render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
      else
        render json: { message: 'Invalid username or password' }, status: :unauthorized
      end
    end
   
    private
   
    def user_login_params
      # params { user: {username: 'Chandler Bing', password: 'hi' } }
      params.require(:user).permit(:email, :password)
    end
end

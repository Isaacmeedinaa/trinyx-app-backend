class Api::V1::AuthController < ApplicationController

    skip_before_action :authorized, only: [:user_login, :business_login]

    def user_login
        @user = User.find_by(username: user_login_params[:username])

        if @user && @user.authenticate(user_login_params[:password])
            @token = encode_token({ user_id: @user.id })
            render json: { status: 200, user: UserSerializer.new(@user), jwt: @token }
        else
            render json: { status: 401, message: 'Invalid username or password' }, login: :unauthorized
        end
    end

    def auto_user_login
        if logged_in_user
            render json: { user: UserSerializer.new(logged_in_user) }
        else
            render json: 'No user logged in' 
        end
    end

    def business_login
        @business = Business.find_by(email: business_login_params[:email])

        if @business && @business.authenticate(business_login_params[:password])
            @token = encode_token({ business_id: @business.id })
            render json: { status: 200, business: BusinessSerializer.new(@business), jwt: @token }
        else
            render json: { status: 401, message: 'Invalid username or password' }, login: :unauthorized
        end
    end

    def auto_business_login
        if logged_in_business
            render json: { business: BusinessSerializer.new(logged_in_business) }
        else
            render json: 'No business logged in' 
        end
    end

    private

    def user_login_params
        params.require(:user).permit(:username, :password)
    end

    def business_login_params
        params.require(:business).permit(:email, :password)
    end

end
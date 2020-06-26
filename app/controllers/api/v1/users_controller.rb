class Api::V1::UsersController < ApplicationController
    
    skip_before_action :authorized, only: [:index, :register, :update, :show]

    def index
        @users = User.all
        render json: @users
    end

    def register
        @user = User.create(user_params)

        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: { status: 200, user: UserSerializer.new(@user), jwt: @token }
        else
            render json: { status: 401, message: @user.errors.full_messages }
        end
    end

    def update
    end

    def show
        @user = User.find_by(id: params[:id])
        render json: @user
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :age, :username, :email, :phone_number, :location, :password, :password_confirmation)
    end

end

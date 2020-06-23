class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def create
    end

    def update
    end

    def show
        @user = User.find_by(id: params[:id])
        render json: @user
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :email, :phone_number, :age, :location, :password)
    end

end

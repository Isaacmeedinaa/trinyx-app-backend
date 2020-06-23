class Api::V1::BusinessesController < ApplicationController

    def index
        @businesses = Business.all
        render json: @businesses
    end

    def create
    end

    def update
    end

    def show
        @business = Business.find_by(id: params[:id])
        render json: @business
    end

    private

    def business_params
        params.require(:business).permit(:name, :business_industry, :email, :phone_number, :location, :password)
    end

end

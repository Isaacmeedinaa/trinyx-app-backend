class Api::V1::BusinessesController < ApplicationController

    skip_before_action :authorized, only: [:index, :register, :update, :show]

    def index
        @businesses = Business.all
        render json: @businesses
    end

    def register
        @business = Business.create(business_params)

        if @business.valid?
            @token = encode_token(business_id: @business.id)
            render json: { status: 200, business: BusinessSerializer.new(@business), jwt: @token }
        else
            render json: { status: 401, message: @business.errors.full_messages }
        end
    end

    def update
    end

    def show
        @business = Business.find_by(id: params[:id])
        render json: @business
    end

    private

    def business_params
        params.require(:business).permit(:name, :business_industry, :email, :phone_number, :location, :lat, :lng, :password, :password_confirmation)
    end

end

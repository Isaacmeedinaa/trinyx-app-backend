class Api::V1::DealsController < ApplicationController
    
    def index
        @deals = Deal.all
        render json: @deals
    end

    def create
    end

    def update
    end

    def show
        @deal = Deal.find_by(id: params[:id])
        render json: @deal
    end

    private

    def deal_params
        params.require(:deal).permit(:title, :content, :code, :image, :begin_date, :expiration_date)
    end

end

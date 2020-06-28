class Api::V1::DealsController < ApplicationController
    
    skip_before_action :authorized, only: [:index, :create, :update, :show, :destroy]

    def index
        @deals = Deal.all
        render json: @deals
    end

    def create
        @deal = Deal.create(deal_params)

        if @deal.valid?
            render json: { status: 200, deal: DealSerializer.new(@deal) }
        else
            render json: { status: 401, message: @deal.errors.full_messages }
        end
    end

    def update
        @deal = Deal.find_by(id: params[:id])

        if @deal
            @deal.update!(deal_params)
            render json: { status:200, deal: DealSerializer.new(@deal) }
        else
            render json: { status: 401, message: @deal.errors.full_messages }
        end
    end

    def show
        @deal = Deal.find_by(id: params[:id])
        render json: @deal
    end

    def destroy
        @deal = Deal.find_by(id: params[:id])

        if @deal
            @deal.destroy
            render json: { status: 200 }
        else
            render json: { status: 401, message: @deal.errors.full_messages }
        end
    end

    private

    def deal_params
        params.require(:deal).permit(:title, :content, :code, :image, :begin_date, :expiration_date, :business_id)
    end

end

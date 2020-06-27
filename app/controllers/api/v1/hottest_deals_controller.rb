class Api::V1::HottestDealsController < ApplicationController

    skip_before_action :authorized, only: [:index, :show]

    def index
        @hottest_deals = Deal.left_joins(:likes).group(:id).order('COUNT(likes.id) DESC').limit(2)
        render json: @hottest_deals
    end

    def show
        @hot_deal = Deal.find_by(id: params[:id])
        render json: @hot_deal
    end

end

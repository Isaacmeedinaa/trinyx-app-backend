class Api::V1::LikesController < ApplicationController

    def index
        @likes = Like.all
        render json: @likes
    end

    def create
    end

    def update
    end

    def show
        @like = Like.find_by(id: params[:id])
        render json: @like
    end
    
    private

    def like_params
        params.permit(:like).require(:user_id, :business_id, :deal_id)
    end

end

class Api::V1::LikesController < ApplicationController

    skip_before_action :authorized, only: [:index, :create, :show, :destroy]

    def index
        @likes = Like.all
        render json: @likes
    end

    def create
        @like = Like.create(like_params)

        if @like
            render json: { status: 200, like: LikeSerializer.new(@like) }
        else
            render json: { status: 401, message: @like.errors.full_messages }
        end
    end

    def show
        @like = Like.find_by(id: params[:id])
        render json: @like
    end

    def destroy
        @like = Like.find_by(id: params[:id])

        if @like
            @like.destroy
            render json: { status: 200 }
        else
            render json: { status: 401, message: @like.errors.full_messages }
        end
    end
    
    private

    def like_params
        params.require(:like).permit(:user_id, :business_id, :deal_id)
    end

end

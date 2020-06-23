class Api::V1::CommentsController < ApplicationController
    def index
        @comments = Comment.all
        render json: @comments 
    end

    def create
    end

    def update
    end

    def show
        @comment = Comment.find_by(id: params[:id])
        render json: @comment
    end

    private

    def comment_params
        params.require(:comment).require(:content, :user_id, :deal_id)
    end
end

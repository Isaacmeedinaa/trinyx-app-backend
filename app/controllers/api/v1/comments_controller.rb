class Api::V1::CommentsController < ApplicationController

    skip_before_action :authorized, only: [:index, :create, :update, :show, :destroy]

    def index
        @comments = Comment.all
        render json: @comments 
    end

    def create
        @comment = Comment.create(comment_params)

        if @comment.valid?
            render json: { status: 200, comment: CommentSerializer.new(@comment) }
        else
            render json: { status: 401, message: @comment.errors.full_messages }
        end
    end

    def update
    end

    def show
        @comment = Comment.find_by(id: params[:id])
        render json: @comment
    end

    def destroy
        @comment = Comment.find_by(id: params[:id])

        if @comment
            @comment.destroy
            render json: { status: 200 }
        else
            render json: { status: 401, message: @comment.errors.full_messages }
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:content, :user_id, :deal_id)
    end
end

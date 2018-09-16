class Api::V1::CommentsController < ApplicationController
  before_action :find_token, only: [:create, :update]

  def index
    @comments = Comment.all
    render json: @comments
  end

  def show
    @comment = Comment.find(params[:id])
    render json: @comment
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    if @comment.save
      render json: @comment, status: :accepted
    else
      render json: { errors: @comment.errors.full_message }, status: :unprocessible_entity
    end
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment, status: :accepted
    else
      render json: { errors: @comment.errors.full_message }, status: :unprocessible_entity
    end
  end

  private

  def comment_params
    params.permit(:deal_id, :content).merge(user_id: @current_user.id)
  end

end

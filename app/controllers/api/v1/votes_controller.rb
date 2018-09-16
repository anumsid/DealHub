class Api::V1::VotesController < ApplicationController
  before_action :find_token, only: [:create, :update]

  def index
    @votes = Vote.all
    render json: @votes
  end

  def show
    @votes = Vote.where(deal_id: params[:id])
    render json: @votes
  end

  def create
    @vote = Vote.new(vote_params)
    if @vote.save
      render json: @vote, status: :accepted
    else
      render json: { errors: @vote.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def vote_params
    params.permit(:deal_id).merge(user_id: @current_user.id)
  end

end

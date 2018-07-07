class Api::V1::VotesController < ApplicationController
before_action :find_vote, only: [:update]
  def index
    @deals = Deal.all
    render json: @deals
  end

  def update
    @deal.update(vote_params)
    if @deal.save
      render json: @deal, status: :accepted
    else
      render json: { errors: @deal.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def vote_params
    params.permit(:team_id)
  end

  def find_vote
    @deal = Deal.find(params[:id])
  end

end

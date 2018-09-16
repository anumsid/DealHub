class Api::V1::DealsController < ApplicationController
  before_action :find_token, only: [:create, :update]

  def index
    @deals = Deal.all
    render json: @deals, :include => [:votes, :comments]
  end

  def show
    @deal = Deal.find(params[:id])
    render json: @deal, :include => [:votes, :comments]
  end

  def create
    @deal = Deal.new(deal_params)
    if @deal.save
      render json: @deal, status: :accepted
    else
      render json: { errors: @deal.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @deal = Deal.find(params[:id])
    if @deal
      @deal.update(deal_params)
      if @deal.save
        render json: @deal, status: :accepted
      else
        render json: { errors: @deal.errors.full_messages }, status: :unprocessible_entity
      end
    else
      render json: { error: "deal not found" }, status: :unprocessible_entity
    end
  end

  private

  def deal_params
    params.permit(:title, :location, :expiration_date, :image, :category, :description).merge(poster_id: @current_user.id)
  end

end

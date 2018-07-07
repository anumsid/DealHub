class Api::V1::DealsController < ApplicationController
  before_action :find_deal, only: [:update]

  def index
    @deals = Deal.all
    render json: @deals
  end

  def show
    @deal
    render json: @comment
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
    @deal.update(deal_params)
    if @deal.save
      render json: @deal, status: :accepted
    else
      render json: { errors: @deal.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def deal_params
    params.permit(:title, :location, :expiration_date, :image, :poster_id, :category, :description)
  end

  def find_deal
    @deal = Deal.find(params[:id])
  end

end

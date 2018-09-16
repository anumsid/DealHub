class Api::V1::SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session = Session.new(session_params)
      if session.save
        render json: session, status: :accepted
      else
        render json: { errors: session.errors.full_messages }, status: :unprocessible_entity
      end
    else
      render json: { error: "Invalid username or password" }, status: :unprocessible_entity
    end
  end

  private

  def session_params
    params.permit(:email)
  end

end

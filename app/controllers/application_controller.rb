class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

  protected

  def find_token
    authenticate_or_request_with_http_token do |token, options|
      session = Session.find_by(token: token)
      @current_user = User.find_by(email: session.email)
      if @current_user
        render json: @current_user, status: :accepted
      else
        render json: { errors: "Not Authorized" }, status: :unprocessible_entity
      end
    end
  end
end

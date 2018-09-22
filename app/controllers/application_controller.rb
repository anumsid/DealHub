class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

  protected

  def find_token
    authenticate_or_request_with_http_token do |token, options|
      session = Session.find_by(token: token)
      if session
        @current_user = User.find_by(email: session.email)
        render json: @current_user, status: :accepted
      else
        render json: { errors: "Not Authorized" }, status: :unauthorized
      end
    end
  end
end

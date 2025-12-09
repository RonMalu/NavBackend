class ApplicationController < ActionController::API
    # Encode JWT
  def encode_token(payload)
    JWT.encode(payload, Rails.application.credentials.secret_key_base)
  end

  # Read Authorization Header
  def auth_header
    request.headers['Authorization']
  end

  # Decode JWT
  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, Rails.application.credentials.secret_key_base, true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  # Find Logged-In User
  def current_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @current_user ||= User.find_by(id: user_id)
    end
  end

  # Authorization Guard
  def authorize
    render json: { error: "Not authorized" }, status: :unauthorized unless current_user
  end


end

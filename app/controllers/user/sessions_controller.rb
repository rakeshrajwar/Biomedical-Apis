class User::SessionsController < Devise::SessionsController

  # POST /resource/sign_in
  def create
    user = warden.authenticate!(auth_options)
    token = Tiddle.create_and_return_token(user, request)
    render json: { authentication_token: token }
  end

  # DELETE /resource/sign_out
  def destroy
    Tiddle.expire_token(current_user, request) if current_user
    render json: {}
  end
end

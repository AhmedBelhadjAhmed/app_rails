class PasswordsController < ApplicationController
  before_action :require_user_logged_in!

  def edit; end

  def update
    return unless Current.user.update(password_params)

    redirect_to root_path, notice: 'Passwords updated successfully'
  end

  private

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end

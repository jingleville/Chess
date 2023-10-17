class AccountsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_account, only: %i[ show ]
  before_action :owner?

  def show
    
  end

  private

  def set_account
    @account = Account.find(params[:id])
  end

  def owner?
    if current_user != @account.user
      redirect_back fallback_location: root_path, notice: 'Its not your account'
    end
  end
end

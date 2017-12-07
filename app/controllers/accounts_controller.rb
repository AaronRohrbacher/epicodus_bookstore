class AccountsController < ApplicationController

  def show
      @account = Account.find(params[:id])

  end

  def edit
    @user = current_user
    @account = current_user.account
  end

  def update
    @account = Account.find(params[:id])
    if @account.update(account_params)
      flash[:notice] = "Account successfully updated!"
      redirect_to  books_path
    else
      render :edit
    end
  end

private
  def account_params
    params.require(:account).permit(:address_one, :address_two, :city, :state, :zip, :phone, :first_name, :last_name, :active)
  end

end

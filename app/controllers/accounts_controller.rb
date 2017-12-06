class AccountController < ApplicationController

def edit
  @user = current_user
  @account = current_user.account
end

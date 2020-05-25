class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    salt= Digest::SHA1.hexdigest("# We add #{params[:user][:email]} as unique value and #{Time.now} as random value")
    encrypted_password= User.encrypt(params[:user][:password], salt)
    @user = User.new(
                      username: params[:user][:username],
                      email: params[:user][:email],
                      encrypted_password: encrypted_password,
                      salt: salt
                    )
    if @user.save
      flash[:notice] = "You signed up successfully"
    else
      flash[:notice] = "Invalid Data"
    end
    render "new"
  end
end

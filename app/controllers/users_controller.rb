class UsersController < ApplicationController
    before_action :authorise, :only => [:index]
  def index
    @users = User.all
  end

  def new
    @user = User.new
    # @donation = Donation.find
  end
  def create
    @user = User.new user_params
      if @user.save
        session[:user_id] = @user.id
        redirect_to new_donation_path
      else
        render :new
      end
  end

  def show
    @user = @current_user
  end

  def edit
    @user = @current_user
  end

  def destroy
    user = @current_user
      user.destroy
      redirect_to users_path
  end
  def update
    user = @current_user
    user.update user_params
    redirect_to root_path
  end

private
def user_params
  params.require(:user).permit(:email, :password, :password_confirmation, :firstname, :lastname, :address, :subrub, :postcode, :phone)
end

def authorise
  redirect_to root_path unless (@current_user.present? && @current_user.admin?)
end
end

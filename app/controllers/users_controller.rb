class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find params[:id]
  end

  def show
      @user = User.find params[:id]
  end
  def update
    user = User.find params[:id]
    user.update user_params
    redirect_to user
  end
  #  id         :integer          not null, primary key
  #  firstname  :text
  #  lastname   :text
  #  address    :text
  #  subrub     :text
  #  postcode   :integer
  #  phone      :integer
  #  email      :text

private
def user_params
  params.require(:user).permit(:firstname, :lastname, :address, :subrub, :postcode, :phone, :email)
end
end

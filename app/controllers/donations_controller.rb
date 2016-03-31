class DonationsController < ApplicationController
  def index
    # @donations = Donation.all
    puts "Thank you for making donation."
  end

  def create
    @donation = Donation.new donations_params
    if @donation.save
      @current_user.donations << @donation
      redirect_to donations_path
    else
      render :new
    end
  end
  def new
    @donation = Donation.new
  end
  def edit
      @donation = Donation.find params[:id]
  end
  def update

    donation = Donation.find params[:id]
    donation.update donations_params
    redirect_to donations_path
  end
  def destroy
      donation = Donation.find params[:id]
      donation.destroy
      redirect_to donations_path
  end

  def show
      @donation = Donation.find params[:id]
  end
  private
  def donations_params
    params.require(:donation).permit(:amount, :category_ids => [])
  end
end

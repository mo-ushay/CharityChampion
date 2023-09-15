# app/controllers/donations_controller.rb

class DonationsController < ApplicationController
    before_action :set_donation, only: [:show, :edit, :update, :destroy]
  
    # Display a list of donations
    def index
      @donations = Donation.all
    end
  
    # Show an individual donation
    def show
    end
  
    # Display the form to create a new donation
    def new
      @donation = Donation.new
    end
  
    # Create a new donation
    def create
      @donation = Donation.new(donation_params)
      if @donation.save
        redirect_to @donation, notice: 'Donation was successfully created.'
      else
        render :new
      end
    end
  
    # Display the form to edit an existing donation
    def edit
    end
  
    # Update an existing donation
    def update
      if @donation.update(donation_params)
        redirect_to @donation, notice: 'Donation was successfully updated.'
      else
        render :edit
      end
    end
  
    # Delete a donation
    def destroy
      @donation.destroy
      redirect_to donations_url, notice: 'Donation was successfully destroyed.'
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_donation
      @donation = Donation.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def donation_params
      params.require(:donation).permit(:amount, :donor_id, :purpose, :description, :donation_date)
    end
  end
  
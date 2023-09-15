# app/controllers/donors_controller.rb

class DonorsController < ApplicationController
    # ...
  
    # Display the donor registration form
    def new
      @donor = Donor.new
    end
  
    # Handle donor registration
    def create
      @donor = Donor.new(donor_params)
      if @donor.save
        # Successful registration, you can redirect to a donor profile page or another location
        redirect_to @donor, notice: 'Donor was successfully registered.'
      else
        # Registration failed, render the registration form with error messages
        render :new
      end
    end

      # List all donors
    def index
      @donors = Donor.all
    end

      # Show individual donor profile
  def show
    @donor = Donor.find(params[:id])
  end
  
    private
  
    def donor_params
      params.require(:donor).permit(:name, :email, :password)
    end
  end
  
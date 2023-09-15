# app/controllers/beneficiaries_controller.rb

class BeneficiariesController < ApplicationController
    before_action :set_beneficiary, only: [:show, :edit, :update, :destroy]
  
    # Display a list of beneficiaries
    def index
      @beneficiaries = Beneficiary.all
    end
  
    # Show an individual beneficiary
    def show
    end
  
    # Display the form to create a new beneficiary
    def new
      @beneficiary = Beneficiary.new
    end
  
    # Create a new beneficiary
    def create
      @beneficiary = Beneficiary.new(beneficiary_params)
      if @beneficiary.save
        redirect_to @beneficiary, notice: 'Beneficiary was successfully created.'
      else
        render :new
      end
    end
  
    # Display the form to edit an existing beneficiary
    def edit
    end
  
    # Update an existing beneficiary
    def update
      if @beneficiary.update(beneficiary_params)
        redirect_to @beneficiary, notice: 'Beneficiary was successfully updated.'
      else
        render :edit
      end
    end
  
    # Delete a beneficiary
    def destroy
      @beneficiary.destroy
      redirect_to beneficiaries_url, notice: 'Beneficiary was successfully destroyed.'
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_beneficiary
      @beneficiary = Beneficiary.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def beneficiary_params
      params.require(:beneficiary).permit(:name, :email, :address, :phone_number)
    end
  end
  
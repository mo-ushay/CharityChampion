# app/controllers/expenses_controller.rb

class ExpensesController < ApplicationController
    before_action :set_expense, only: [:show, :edit, :update, :destroy]
  
    # Display a list of expenses
    def index
      @expenses = Expense.all
    end
  
    # Show an individual expense
    def show
    end
  
    # Display the form to create a new expense
    def new
      @expense = Expense.new
    end
  
    # Create a new expense
    def create
      @expense = Expense.new(expense_params)
      if @expense.save
        redirect_to @expense, notice: 'Expense was successfully created.'
      else
        render :new
      end
    end
  
    # Display the form to edit an existing expense
    def edit
    end
  
    # Update an existing expense
    def update
      if @expense.update(expense_params)
        redirect_to @expense, notice: 'Expense was successfully updated.'
      else
        render :edit
      end
    end
  
    # Delete an expense
    def destroy
      @expense.destroy
      redirect_to expenses_url, notice: 'Expense was successfully destroyed.'
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def expense_params
      params.require(:expense).permit(:category, :amount, :description, :expense_date)
    end
  end
  
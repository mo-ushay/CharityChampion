# app/models/expense.rb

class Expense < ApplicationRecord
  # Associations
  belongs_to :donor
  belongs_to :beneficiary

  # Validations
  validates :category, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :expense_date, presence: true
end

# app/models/beneficiary.rb

class Beneficiary < ApplicationRecord
    # Attributes
    validates :name, presence: true
    validates :address, presence: true

    has_many :expenses
  end
  
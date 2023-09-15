# app/models/donor.rb

class Donor < ApplicationRecord
    # Attributes
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  
    # Associations
    has_many :expenses
  end
  
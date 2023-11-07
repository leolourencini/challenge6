class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.all.order(:full_name)
  end

  def missing_email
    @customers = Customer.all.where("LENGTH(email_address) = 0")
  end
end

class AccountsController < ApplicationController
  def index
    # Redirect to new if current user doesn't have an account,
    # or to show if they do
  end
  
  def new
    # Create an account
  end

  def create
  end

  def show
    # Show account if user has one
  end

  def edit
    # Edit account options
  end

  # No update or delete for now
end

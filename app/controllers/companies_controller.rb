class CompaniesController < ApplicationController


  before_filter :login_required
  before_filter :admin_required

  def initialize
    @main_tab = 2
  end

  def new
    # HTML Form

  end

  def edit
    @company = current_user.companies[0]
  end

  def update

  end

end

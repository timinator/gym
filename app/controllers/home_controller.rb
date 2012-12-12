class HomeController < ApplicationController
  def index
     render :layout => 'home'
  end
  def about

  end
  def company_list

  	@companies = Company.all

  end
end
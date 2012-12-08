class HomeController < ApplicationController
  def index

  end
  def about

  end
  def company_list

  	@companies = Company.all

  end
end
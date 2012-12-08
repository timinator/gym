class CompaniesController < ApplicationController

  def index
    @company = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(params[:company])

    if @company.save
      redirect_to company_list_path
    else
      render :new
    end
  end

  def show
  end

  def edit
    company_id = params[:id]
    @company = Company.find(company_id)
  end

  def update
  end

end






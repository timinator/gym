class MatchController < ApplicationController
  
	def search

	    query = params[:query]
	    if query.present?
	      @users = User.text_search(query)
	    else
	      @users = User.all
	    end
	    binding.pry
  end	


  def index
    @users = User.all
  end
  def filter
    
  end
end
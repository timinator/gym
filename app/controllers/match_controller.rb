class MatchController < ApplicationController
  def index
    @users = User.all
  end
  def filter
    binding.pry
  end
end
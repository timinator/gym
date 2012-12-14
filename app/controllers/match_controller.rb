class MatchController < ApplicationController
	def search
    query = params[:query]
    if query.present?
      @users = User.text_search(query)
    else
      @users = User.all
    end
  end

  def index
    @users = User.order(:name).page params[:page]
    @photos = Photo.all

  end

  def filter
    query = params[:workout]
    if query.present?
      @users = User.filter(query)
    else
      @users = User.all.page
    end

  end
end
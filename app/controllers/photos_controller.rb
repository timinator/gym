class PhotosController < ApplicationController

 respond_to :html

  def index
    
    @user = User.find(params[:user_id])
    @photos = @user.photos
    
  end

  def new
    @photos = Photo.all
    
  end

  def create
    
    @user = User.find(params[:user_id])
    # retrieve the user
    @photo = Photo.create(:photo => params[:photo], :user_id => @user.id)
    binding.pry
    redirect_to user_photos_path
    
    

  end

  def show
    @user = User.find(params[:user_id])
    @photo = @user.photos.find(params[:id])
  end

  # def edit
  #   if @authenticated_user[:id] != params[:user_id].to_i
  #     redirect_to user_photos_path
  #   else
  #     @user = User.find(params[:user_id])
  #     @photo = @user.photos.find(params[:id])
  #   end
  # end

  def update

    
  end

  def destroy
    user = User.find(params[:user_id])
    @photo = user.photos.find(params[:id])
    @photo.delete
    redirect_to(user_photos_url)
  end

end
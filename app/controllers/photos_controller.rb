class PhotosController < ApplicationController

 respond_to :html

  def index
    # binding.pry
    @user = User.find(params[:user_id])
    @photos = @user.photos
    # get all the photos of this user
  end

  def new
    @photos = Photo.all
    
  end

  def create
    # binding.pry
    @user = User.find(params[:user_id])
    # retrieve the user
    @photo = @user.photos.create(params[:photo])

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

    user = User.find(params[:user_id])
    @photo = user.photos.find(params[:id])

    if @photo.update_attributes(params[:photo])
      redirect_to [@photo.user, @photo]
      # 1st argument is an array, builds correct routed to nested photo
    else
      render :edit
    end
  end

  def destroy
    user = User.find(params[:user_id])
    @photo = user.photos.find(params[:id])
    @photo.delete
    redirect_to(user_photos_url)
  end

end
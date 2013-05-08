class WorkoutsController < ApplicationController

  def create
    @workout = Workout.new(params[:workout])
    if @workout.save
      flash[:notice] = "Workout successfully created."
      redirect_to workouts_url
    else
      render 'index'
    end
  end

  def update
  end

  def destroy
  end

  def index
    @workouts = Workout.all
  end  
end
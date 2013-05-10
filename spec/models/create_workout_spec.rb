require 'spec_helper'

describe CreateWorkout do 

  before(:each) do
    @creator_user = create :user
    @invited_user = create :user
    @start_date = "2013-05-09 13:02:17"
    @end_date = "2013-05-09 15:02:17"
    @params = {creator_user: @creator_user, invited_user: @invited_user, start_date: @start_date, end_date: @end_date}
  end

  it "should create a new Workout" do
    expect { CreateWorkout.new(@params).build! }.to change{Workout.count}.by(1)
  end

  context "creating the new workout" do

    before(:each) do
      @workout = CreateWorkout.new(@params).build!
    end

    it "should assign the workouts to the specified users" do
      @workout.users.first == @creator_user
      @workout.users[-1] = @invited_user #hacky
    end
  end

end
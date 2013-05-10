require 'spec_helper'

describe WorkoutInvitation do

  before(:each) do
    @creator_user = create :user
    @invited_user = create :user
    @start_date = "2013-05-09 13:02:17"
    @end_date = "2013-05-09 15:02:17"
    @params = {creator_user: @creator_user, invited_user: @invited_user, start_date: @start_date, end_date: @end_date}
  end

  it "should create the workout" do
    workout_invitation = WorkoutInvitation.new(@params)
    workout_invitation.should_receive(:send_email_invitation)
    expect {workout_invitation.send_invitation!}.to change{Workout.count}.by(1)
  end

  it "should not create a new workout if there is already one in that timeslot" do
    workout_invitation = WorkoutInvitation.new(@params)
    workout_invitation.should_receive(:send_email_invitation)
    workout = workout_invitation.send_invitation!
    workout.book!
    
    @params[:start_date] = "2013-05-09 11:02:17"
    @params[:end_date] = "2013-05-09 14:02:17"
    
    expect { WorkoutInvitation.new(@params).send_invitation! }.to raise_error(Exception, "Workout already exists for this period")
  end

  it "should send the invited user an email" do
    expect {workout = WorkoutInvitation.new(@params).send_invitation!}.to change{ActionMailer::Base.deliveries.count}.by(1)
    WorkoutMailer.instance_methods(false).include?(:invitation).should == true
  end
end
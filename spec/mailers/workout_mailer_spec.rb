require 'spec_helper'

describe WorkoutMailer do

  before(:each) do
    @creator_user = create :user
    @invited_user = create :user
    @start_date = "2013-05-09 13:02:17"
    @end_date = "2013-05-09 15:02:17"
    params = {creator_user: @creator_user, invited_user: @invited_user, start_date: @start_date, end_date: @end_date}
    @email = WorkoutMailer.invitation(params).deliver
  end

  it "should send an email" do
    ActionMailer::Base.deliveries.empty?.should be_false
  end

  it "should set the from address to hardbodies@outlook.com" do
    @email.from.should.to_s == "hardbodies@outlook.com"
  end

  it "should send the email to the invited user's email address" do
    @email.to.should.to_s == @invited_user.email
  end

  it "should set the subject to 'Tim would like to do a workout with you'" do
    @email[:subject].to_s == "#{@creator_user.name} would like to do a workout with you"
  end

  it "should set the template to invitation" do
    @email[:template].to_s == "invitation"
  end

  # it "should contain the invited user's name" do
  #   puts @email.body.inspect
  #   @email.body.include?("#{@invited_user.name}").should be_true
  # end
end
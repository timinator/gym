class WorkoutParams
  attr_accessor :user

  def self.build!(params, user)
    date = Date.parse(params[:date])
    start_time = Time.parse(params[:start_time])
    end_time = Time.parse(params[:end_time])
    params[:start_date] = DateTime.new(date.year, date.month, date.day, start_time.hour, start_time.min, start_time.sec)
    params[:end_date] = DateTime.new(date.year, date.month, date.day, end_time.hour, end_time.min, end_time.sec)
    params[:creator_user] = user
    params[:invited_user] = User.find(params[:invited_user_id])
    params
  end
end
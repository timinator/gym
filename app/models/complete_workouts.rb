class CompleteWorkouts

  def self.run!
    Workout.booked.each do |workout|
      next if workout.end_date > Time.now
      workout.complete!
    end
  end
end
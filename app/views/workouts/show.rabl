object @workout
 
attributes :id, :workflow_state, :start_date, :end_date

child :users do 
  attributes :id, :name
end
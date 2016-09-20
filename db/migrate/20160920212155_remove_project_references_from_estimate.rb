class RemoveProjectReferencesFromEstimate < ActiveRecord::Migration[5.0]
  def change
  	remove_reference :estimates, :project
  	remove_reference :estimates, :room
  end
end

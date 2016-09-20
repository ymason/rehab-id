class RemoveProjectFeaturesReferencesFromEstimate < ActiveRecord::Migration[5.0]
  def change
  	remove_reference :estimates, :project_feature
  	add_reference :estimates, :project
  end
end

class RemoveProjectFeaturesReferencesFromProject < ActiveRecord::Migration[5.0]
  def change
  	remove_reference :project_features, :project
  	add_reference :project_features, :room
  end
end

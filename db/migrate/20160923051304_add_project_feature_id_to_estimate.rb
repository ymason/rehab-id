class AddProjectFeatureIdToEstimate < ActiveRecord::Migration[5.0]
  def change
    add_reference :estimates, :project_feature, foreign_key: true
  end
end

class CreateProjectFeatures < ActiveRecord::Migration[5.0]
  def change
    create_table :project_features do |t|
      t.references :project, foreign_key: true
      t.references :feature, foreign_key: true

      t.timestamps
    end
  end
end

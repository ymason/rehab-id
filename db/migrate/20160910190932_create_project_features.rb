class CreateProjectFeatures < ActiveRecord::Migration[5.0]
  def change
    create_table :project_features do |t|
      t.integer :price
      t.references :project, foreign_key: true
      t.integer :room_type

      t.timestamps
    end
  end
end

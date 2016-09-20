class CreateEstimates < ActiveRecord::Migration[5.0]
  def change
    create_table :estimates do |t|
      t.references :project_feature, foreign_key: true

      t.timestamps
    end
  end
end

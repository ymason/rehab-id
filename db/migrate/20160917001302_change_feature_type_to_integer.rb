class ChangeFeatureTypeToInteger < ActiveRecord::Migration[5.0]
  def change
  	remove_column :features, :feature_type

  	add_column :features, :feature_type, :integer
  end
end

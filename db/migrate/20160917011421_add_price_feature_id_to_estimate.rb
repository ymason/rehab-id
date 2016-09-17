class AddPriceFeatureIdToEstimate < ActiveRecord::Migration[5.0]
  def change
    add_reference :estimates, :price_feature, foreign_key: true
  end
end

class RemoveEstimateReferencesFromPriceFeature < ActiveRecord::Migration[5.0]
  def change
  	remove_reference :price_features, :estimate
  end
end

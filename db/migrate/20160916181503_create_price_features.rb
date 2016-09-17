class CreatePriceFeatures < ActiveRecord::Migration[5.0]
  def change
    create_table :price_features do |t|
      t.references :user, foreign_key: true
      t.references :feature, foreign_key: true
      t.references :estimate, foreign_key: true
      t.integer :floor
      t.integer :ceiling

      t.timestamps
    end
  end
end

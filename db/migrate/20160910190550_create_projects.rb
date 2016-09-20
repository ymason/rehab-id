class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.integer :square_feet
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

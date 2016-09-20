class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.integer :square_feet
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end

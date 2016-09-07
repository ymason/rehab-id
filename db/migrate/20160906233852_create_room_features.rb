class CreateRoomFeatures < ActiveRecord::Migration[5.0]
  def change
    create_table :room_features do |t|
      t.string :name
      t.references :type, foreign_key: true
      t.references :room_type, foreign_key: true

      t.timestamps
    end
  end
end

class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.string :full_address
      t.string :name
      t.string :phone_number
      t.datetime :time
      t.string :time_zone
      t.references :bid, foreign_key: true
      t.references :contractor_bid, foreign_key: true

      t.timestamps
    end
  end
end

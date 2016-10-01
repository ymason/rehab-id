class CreateBids < ActiveRecord::Migration[5.0]
  def change
    create_table :bids do |t|
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
      t.date :date1
      t.time :start_time1
      t.time :end_time1
      t.date :date2
      t.time :start_time2
      t.time :end_time2
      t.date :date3
      t.time :start_time3
      t.time :end_time3
      t.string :contact_name
      t.string :contact_phone
      t.string :contact_email
      t.text :instructions

      t.timestamps
    end
  end
end

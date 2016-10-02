class RemoveEndTimeFromBids < ActiveRecord::Migration[5.0]
  def change
  	remove_column :bids, :end_time1
  	remove_column :bids, :end_time2
  	remove_column :bids, :end_time3
  end
end

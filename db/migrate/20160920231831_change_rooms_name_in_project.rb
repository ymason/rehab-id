class ChangeRoomsNameInProject < ActiveRecord::Migration[5.0]
  def change
  	rename_column :projects, :rooms, :project_rooms
  end
end

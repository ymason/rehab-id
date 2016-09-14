class ProjectFeature < ApplicationRecord
  belongs_to :project

  enum room_type: [:bedroom, :bathroom, :kitchen, :garage, :exterior, :additional_rooms, :additonal_features ]

  def room_features(type)
    puts type
    byebug

  	# room = room_type.classify.constantize	
  	# room_features = room_class.features

	  # 	if room_class.additional?
	  # 		room_class.additonal.features
	  # 	else
	  # 		room_features
	  # 	end
    end

    def testing_stuff 
      puts "AAAAAAA"
    end
    # @user = project_feature.project.user_id

     def contractor_own_project_features?(project_feature)
      self.id = User.all.where(role: :contractor)
    end
end

class ProjectFeature < ApplicationRecord
  belongs_to :project
  belongs_to :feature

  # before_save :feature_exist
  # after_save :create_estimate

  private

  	# def feature_exist
  	# 	if self.project.project_features.exists?(id: self.id)
  	# 		flash[:error] = "This feature was already added."
  	# 	else
  	# 		self.save
  	# 	end
  	# end

    # def create_estimate
    #   	self.project.create_estimates
    # end

end

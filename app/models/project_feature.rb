class ProjectFeature < ApplicationRecord
  belongs_to :project
  belongs_to :feature
  has_many :estimates

   # before_save :merge_author

  # private

  # def merge_author
  #   if (project_feature_id = ProjectFeature.find_by(proj
  #     self.id = project_feature_id
  #   end
  # end

end

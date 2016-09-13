class Project < ApplicationRecord
  belongs_to :user
  has_many :project_features

  def owner_of_project?(project)
    self.id == project.user_id
  end
end

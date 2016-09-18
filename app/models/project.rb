class Project < ApplicationRecord
  belongs_to :user
  has_many :project_features

  acts_as_mappable :auto_geocode=>{:field=>:full_address, :error_message=>'Could not geocode address'}

  def full_address
    "#{self.address} #{self.city} #{self.state}"
  end
end

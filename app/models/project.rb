class Project < ApplicationRecord
  belongs_to :user
  has_many :project_features
  has_one :estimate

  acts_as_mappable :auto_geocode=>{:field=>:full_address, :error_message=>'Could not geocode address'}

  def full_address
    "#{self.address} #{self.city} #{self.state}"
  end

  def local_contractors
      # Find All Contractors Within 50 Miles
      User.within(5, origin: "#{self.full_address}").where(role: 2)
  end
end

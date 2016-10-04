class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :bid_projects

  def start_times
  	@start_time1 = self.start_time1

    @start_time2 = self.start_time2

    @start_time3 = self.start_time3

    start_times = [@start_time1, @start_time2, @start_time3]
  end

end

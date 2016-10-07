class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :bid_projects

  # validates :date1, presence: true, on: :bid_setup
  # validates :start_time1, presence: true, on: :bid_setup
  # validates :date2, presence: true, on: :bid_setup
  # validates :start_time2, presence: true, on: :bid_setup
  # validates :date3, presence: true, on: :bid_setup
  # validates :start_time3, presence: true, on: :bid_setup
  # validates :contact_name, presence: true, on: :bid_setup
  # validates :contact_phone, presence: true, on: :bid_setup
  # validates :contact_email, presence: true, on: :bid_setup
  # validates :instructions, presence: true, on: :bid_setup

  def start_times
  	@start_time1 = self.start_time1

    @start_time2 = self.start_time2

    @start_time3 = self.start_time3

    start_times = [@start_time1, @start_time2, @start_time3]
  end

end

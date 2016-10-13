class Project < ApplicationRecord
  belongs_to :user
  has_many :project_features
  has_many :estimates
  has_many :features, through: :project_features
  has_one :bid
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true
  validates :square_feet, presence: true
  validates :rooms, presence: true, on: :rooms
  validates :bathrooms, presence: true, on: :rooms
  acts_as_mappable :auto_geocode=>{:field=>:full_address, :error_message=>'Could not geocode address'}

  def full_address
    "#{self.address} #{self.city} #{self.state}"
  end

  def create_estimates(new_features)
    # What is needed to get an estimate

    local_contractors = User.local_contractors(self)
    contractors = []

    local_contractors.each do | c |
      user_id = c.id
      contractor = User.find(user_id)

      contractors.push(contractor)
    end

    contractor_ids = []

    price_features = []

    contractors.each do | c |
      contractor_ids.push(c.id) 
      c.price_features.each do | p |
        price_features.push(p)
      end
    end

    # Make sure the estimate is unique based on project_feature and contractors_prices
    project_features = (new_features.map(&:feature_id) & price_features.map(&:feature_id))
    
    features = []
    
    contractors.each do | c |
      c.price_features.each do | p |
        if project_features.include? p.feature_id
        features.push(p)
        end
      end
    end

    estimates = []

      features.each do | e |
      # How to create an estimate
        # if self.estimates.exists?(price_feature_id: p.id)
        @project_feature = self.project_features.find_by(feature_id: e.feature.id)

        @project_feature_id = @project_feature.id

        estimates << Estimate.new(:price_feature_id => e.id, :project_id => self.id, :project_feature_id => @project_feature_id, :feature_id => e.feature.id, :avg_floor => e.floor, :avg_ceiling => e.ceiling)
      end

    Estimate.import estimates, on_duplicate_key_ignore: true

    # books = []
    # 10.times do |i| 
    #   books << Book.new(:name => "book #{i}")
    # end
    # Book.import books
  end

  def min_and_max
  # What to do with all estimates

    contractors = User.local_contractors(self)

    number_of_contractors = contractors.size
    
    total_minimum = []
    total_maximum = []

    self.estimates.each do | e |

      @floor = e.avg_floor

      total_minimum.push(@floor)

      @ceiling = e.avg_ceiling

      total_maximum.push(@ceiling)

      end

      @total_minimum = total_minimum.reduce(0, :+)

      @total_maximum = total_maximum.reduce(0, :+)

      @project_minimum = (@total_minimum / number_of_contractors)

      @project_maximum = (@total_maximum / number_of_contractors)

      min_max = [@project_minimum, @project_maximum]
  end

  def time_zone

    @lat = self.lat

    @lng = self.lng

    time_zone = Timezone.lookup(@lat, @lng)
  end
  
end
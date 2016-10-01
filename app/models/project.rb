class Project < ApplicationRecord
  belongs_to :user

  has_many :project_features
  has_many :estimates
  has_many :features, through: :project_features
  has_one :bid


  acts_as_mappable :auto_geocode=>{:field=>:full_address, :error_message=>'Could not geocode address'}

  def full_address
    "#{self.address} #{self.city} #{self.state}"
  end

  def create_estimates

    # What is needed to get an estimate

    contractors = User.local_contractors(self)

    features = []

    contractors.each do | c |

      contractor_prices = c.price_features

          contractor_prices.each do | p |

            if self.project_features.exists?(:feature_id => p.feature.id)

      # Make sure the estimate is unique based on project_feature and contractors

      # How to create an estimate

              @floor_price = p.floor

              @ceiling_price = p.ceiling

              @feature_id = p.feature.id

              @price_feature_id = p.id

              @user_id = p.user_id

              @project_feature = self.project_features.find_by(feature_id: p.feature.id)

              @project_feature_id = @project_feature.id

              hash = {:price_feature_id => @price_feature_id, :project_feature_id => @project_feature_id, :feature_id => @feature_id, :avg_floor => @floor_price, :avg_ceiling => @ceiling_price, :user_id => @user_id}

              features.push(hash)

          end
        end
      end

        features.each do |f|

          estimate_hash = {}
          estimate_hash[:price_feature_id] = f[:price_feature_id]
          estimate_hash[:project_feature_id] = f[:project_feature_id]
          estimate_hash[:feature_id] = f[:feature_id]
          estimate_hash[:avg_floor] = f[:avg_floor]
          estimate_hash[:avg_ceiling] = f[:avg_ceiling]

            if self.estimates.exists?(price_feature_id: f[:price_feature_id])

            else
            p = Estimate.new(estimate_hash)

            p.project_id = self.id

            p.save
            end
        end
        
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
end

# # If hash has key then add it, if doesn't have key then create it,
#       # make it an array, and add feature to it.

#       @floor_price = p.floor

#               @ceiling_price = p.ceiling

#               @feature_id = p.feature.id

#               if floor[@feature_id] == nil
#                   floor[@feature_id] = [@floor_price]
#                 else
#                   floor[@feature_id].push[@floor_price]
#                 end

#                 if ceiling[@feature_id] == nil
#                     ceiling[@feature_id] = [@ceiling_price]
#                   else
#                     ceiling[@feature_id].push[@ceiling_price]

# price_minimum = floor.reduce(0, :+)

# price_maximum = ceiling.reduce(0, :+)

# @avg_floor = price_minimum / floor.length

# @avg_ceiling = price_maximum / ceiling.length

# @project_feature_id = 

# @project_id = self.id


# Estimate.new(
#   project_feature_id: @project_feature_id,
#   project_id: @project_id,
#   avg_floor: @avg_floor,
#   avg_ceiling: @avg_ceiling
#   )
class Estimate < ApplicationRecord
  belongs_to :project_feature
  belongs_to :price_features

  def how_to_create_estimate
  end

  def what_i_need_to_get
  end

  def what_to_do_with_it
  end
  
  Estimate.where("project_feature_id = :feature_id OR price_feature_id = :feature_id", feature_id: feature_id)
          .pluck(:project_feature_id, :price_feature_id).uniq.compact - [feature_id]
  end

#   def find_campaigns_near(origin,distance)
#     locations = Location.find(:all,  
#             :origin => address,
#             :within => distance
#     );
#     # use Hash for uniqueness based on id
#     campaigns = Hash.new
#     locations.each do |location|
#         location.campaigns.each do |campaign|
#             campaigns[campaign.id] = campaign if campaigns[campaign.id].blank?
#         end
#     end
#     campaigns
# end
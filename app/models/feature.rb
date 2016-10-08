class Feature < ApplicationRecord
	has_many :price_features
	has_many :project_features

	enum feature_type: [:floors, :room, :roof, :exterior, :bathroom, :plumbing, :hvac, :electrical, :kitchen]
end
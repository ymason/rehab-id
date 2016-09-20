module RoomType
	class AdditionalFeatures
		def features
			[
				HVAC.new,
				Electrical.new,
				Plumbing.new,
				Stair.new
			]
		end
	end
end
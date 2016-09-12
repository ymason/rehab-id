module AdditionalType
	class OtherRoom
		def features
			[
				Floor.new,
				Wall.new,
				Ceiling.new,
				Fixtures.new,
				Window.new,
				Door.new,
			]
		end
	end
end
# # Flooring - 6
# ["Ceramic", "Porcelain", "Marble", "Carpet", "Wood", "Laminate"]
# # HVAC
# # Electrical
# # Plumbing
# # Walls
# # Doors
# # Exterior - 5
# ["Landscape", "Pool", "Patio", "Porch", "Fence"]
# # Windows
# # Kitchen
# # Bathroom
# # Stairs
# # Roof - 4
# ["Shingle", "Tile", "Metal", "Flat"]
# # Demolition

#Features

#1
floors_ceramic = Feature.create(name: "Ceramic", feature_type: 0)
#2
floors_porcelain = Feature.create(name: "Porcelain", feature_type: 0)
#3
floors_marble = Feature.create(name: "Marble", feature_type: 0)
#4
floors_carpet = Feature.create(name: "Carpet", feature_type: 0)
#5
floors_wood = Feature.create(name: "Wood", feature_type: 0)
#6
floors_laminate = Feature.create(name: "Laminate", feature_type: 0)
#7
walls = Feature.create(name: "Walls", feature_type: 1)
#8
doors = Feature.create(name: "Doors", feature_type: 1)
#9
windows = Feature.create(name: "Windows", feature_type: 1)
#10
paint = Feature.create(name: "Paint", feature_type: 1)
#11
demoliton = Feature.create(name: "Demolition", feature_type: 1)
#12
roof_flat = Feature.create(name: "Flat", feature_type: 2)
#13
roof_shingle = Feature.create(name: "Shingle", feature_type: 2)
#14
roof_tile = Feature.create(name: "Tile", feature_type: 2)
#15
roof_metal = Feature.create(name: "Metal", feature_type: 2)
#16
stairs = Feature.create(name: "Stairs", feature_type: 3)
#17
exterior_landscape = Feature.create(name: "Landscape", feature_type: 3)
#18
exterior_fence = Feature.create(name: "Fence", feature_type: 3)
#19
exterior_pool = Feature.create(name: "Pool", feature_type: 3)
#20
exterior_porch = Feature.create(name: "Porch", feature_type: 3)
#21
exterior_patio = Feature.create(name: "Patio", feature_type: 3)
#22
tub = Feature.create(name: "Tub", feature_type: 4)
#23
shower = Feature.create(name: "Shower", feature_type: 4)
#24
fixtures = Feature.create(name: "Fixtures", feature_type: 4)
#25
walls = Feature.create(name: "Walls", feature_type: 4)
#26
demolition = Feature.create(name: "Demolition", feature_type: 4)
#27
plumbing = Feature.create(name: "Plumbing", feature_type: 5)
#28
hvac = Feature.create(name: "HVAC", feature_type: 6)
#29
electrical = Feature.create(name: "Electrical", feature_type: 7)
#30
kitchen = Feature.create(name: "Kitchen", feature_type: 8)


# Dummy Contractos

contractor1 = User.create(name: "Bob", email: "fasdfsf@adf.com", phone:"305-551-4212", role: 2, password: "angrybirds", password_confirmation: "angrybirds", address: "120 SW 8 St", city: "Miami", state: "Florida", zip_code: "33130")

contractor2 = User.create(name: "Pablo", email: "fasdfsf2123@adf.com", phone:"305-551-4252", role: 2, password: "angrybirds", password_confirmation: "angrybirds", address: "120 SW 8 St", city: "Miami", state: "Florida", zip_code: "33130")

contractor3 = User.create(name: "George", email: "fasdfs1424f@adf.com", phone:"305-551-4272", role: 2, password: "angrybirds", password_confirmation: "angrybirds", address: "120 SW 8 St", city: "Miami", state: "Florida", zip_code: "33130")

# Dummy Admn

admin = User.create(name: "Yemani", email: "yemani@yemani.com", phone:"305-555-5555", role: 0, password: "angrybirds", password_confirmation: "angrybirds", address: "120 SW 8 St", city: "Miami", state: "Florida", zip_code: "33130")


	# Contractor1 Prices
	PriceFeature.create(user_id: 1, feature_id: 1, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 2, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 3, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 4, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 5, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 6, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 7, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 8, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 9, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 10, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 11, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 12, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 13, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 14, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 15, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 16, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 17, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 18, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 19, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 20, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 21, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 22, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 23, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 24, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 25, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 26, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 27, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 28, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 29, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 1, feature_id: 30, floor: 1000, ceiling: 2000)
	# Contractor2 Prices
	PriceFeature.create(user_id: 2, feature_id: 1, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 2, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 3, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 4, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 5, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 6, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 7, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 8, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 9, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 10, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 11, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 12, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 13, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 14, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 15, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 16, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 17, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 18, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 19, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 20, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 21, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 22, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 23, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 24, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 25, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 26, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 27, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 28, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 29, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 2, feature_id: 30, floor: 1000, ceiling: 2000)

	# Contractor3 Prices
	PriceFeature.create(user_id: 3, feature_id: 1, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 2, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 3, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 4, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 5, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 6, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 7, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 8, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 9, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 10, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 11, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 12, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 13, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 14, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 15, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 16, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 17, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 18, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 19, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 20, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 21, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 22, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 23, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 24, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 25, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 26, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 27, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 28, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 29, floor: 1000, ceiling: 2000)
	PriceFeature.create(user_id: 3, feature_id: 30, floor: 1000, ceiling: 2000)

# Dummy Lenders

lender1 = User.create(name: "John", email: "fasdfs21f@adf.com", phone:"305-551-4212", role: 1, password: "angrybirds", password_confirmation: "angrybirds", address: "120 SW 8 St", city: "Miami", state: "Florida", zip_code: "33130")

lender2 = User.create(name: "Leo", email: "fa12sdfsf2123@adf.com", phone:"305-551-4252", role: 1, password: "angrybirds", password_confirmation: "angrybirds", address: "110 SW 8 St", city: "Miami", state: "Florida", zip_code: "33130")

lender3 = User.create(name: "Walter", email: "fasd121fs1424f@adf.com", phone:"305-551-4272", role: 1, password: "angrybirds", password_confirmation: "angrybirds", address: "120 SW 8 St", city: "Miami", state: "Florida", zip_code: "33130")

# Dummy Lender Policies
	
	# Lender1 Policy

	LenderUnderwriting.create(user_id: 5, name: "Regular Loan", ltv: 0.80, arv: 0.80, experience: 2, fico: 600, interest_rate: 0.12, loan_min: 20000, loan_max: 2500000, origination_fee: 0.02, term: 6, address: "120 SW 8 St", city: "Miami", state: "Florida", zip_code: "33130", ltc: 0.80, draws: 3, min_draw: 12000, min_final_draw: 0.25)
	LenderUnderwriting.create(user_id: 6,name: "Advanced Loan", ltv: 0.85, arv: 0.70, experience: 4, fico: 650, interest_rate: 0.15, loan_min: 20000, loan_max: 1500000, origination_fee: 0.03, term: 8, address: "120 SW 8 St", city: "Miami", state: "Florida", zip_code: "33130", ltc: 0.90, draws: 4, min_draw: 15000, min_final_draw: 0.20)
	LenderUnderwriting.create(user_id: 7, name: "High LTV Loan", ltv: 0.95, arv: 0.60, experience: 5, fico: 700, interest_rate: 0.20, loan_min: 20000, loan_max: 1000000, origination_fee: 0.04, term: 12, address: "120 SW 8 St", city: "Miami", state: "Florida", zip_code: "33130", ltc: 1.00, draws: 5, min_draw: 10000, min_final_draw: 0.15)

# Rooms

# #1
# master_bathroom = Room.create(name: "Master Bathroom", room_type: 1)
# #2
# regular_bathroom = Room.create(name: "Bathroom", room_type: 1)
# #3
# half_bathroom = Room.create(name: "Half Bathroom", room_type: 1)
# #4
# jack_and_jill = Room.create(name: "Jack and Jill", room_type: 1)
# #5
# bedroom = Room.create(name: "Bedroom", room_type: 0)
# #6
# living_room = Room.create(name: "Living Room", room_type: 0)
# #7
# family_room = Room.create(name: "Family Room", room_type: 0)
# #8
# dining_room = Room.create(name: "Dining Room", room_type: 0)
# #9
# laundry_room = Room.create(name: "Laundry Room", room_type: 0)
# #10
# other_room = Room.create(name: "Other Room", room_type: 0)
# #11
# hvac = Room.create(name: "HVAC")
# #12
# electrical = Room.create(name: "Electrical")
# #13
# plumbing = Room.create(name: "Plumbing")
# #14
# stairs = Room.create(name: "Stair")

# # RoomFeatures

# #1
# appliances = RoomFeature.create(name: "Appliances")
# #2
# fixtures = RoomFeature.create(name: "Fixtures")
# #3
# cabinents = RoomFeature.create(name: "Cabinents")
# #4
# ceiling = RoomFeature.create(name: "Ceiling")
# #5
# closet = RoomFeature.create(name: "Closet")
# #6
# countertops = RoomFeature.create(name: "Countertops")
# #7
# door = RoomFeature.create(name: "Door")
# #8
# electrical = RoomFeature.create(name: "Electrical")
# #9
# floor = RoomFeature.create(name: "Floor")
# #10
# garage_door = RoomFeature.create(name: "Garage Door")
# #11
# plumbing = RoomFeature.create(name: "Plumbing")
# #12
# hvac = RoomFeature.create(name: "HVAC")
# #13
# shower = RoomFeature.create(name: "Shower")
# #14
# stairs = RoomFeature.create(name: "Stairs")
# #15
# tub = RoomFeature.create(name: "Tub")
# #16
# window = RoomFeature.create(name: "Window")
# #17
# roof = RoomFeature.create(name: "Roof")
# #18
# wall = RoomFeature.create(name: "Wall")
# #19
# pool = RoomFeature.create(name: "Pool")
# #20
# landscape = RoomFeature.create(name: "Landscape")
# #21
# patio = RoomFeature.create(name: "Patio")
# #22
# porch = RoomFeature.create(name: "Porch")

# # Features

# #1
# bathroom_tub = Feature.create(room_id: 1, room_feature_id: 15)
# #2
# bathroom_fixtures = Feature.create(room_id: 1, room_feature_id: 1)
# #3
# bathroom_floor = Feature.create(room_id: 1, room_feature_id: 9)
# #4
# bathroom_wall = Feature.create(room_id: 1, room_feature_id: 18)
# #5
# bathroom_shower = Feature.create(room_id: 1, room_feature_id: 13)
# #6
# bathroom_ceiling = Feature.create(room_id: 1, room_feature_id: 4)
# #7
# bathroom_window = Feature.create(room_id: 1, room_feature_id: 16)
# #8
# bathroom_door = Feature.create(room_id: 1, room_feature_id: 7)
# #9
# bathroom_plumbing = Feature.create(room_id: 1, room_feature_id: 11)
# #10
# bedroom_closet = Feature.create(room_id: 2, room_feature_id: 5)
# #11
# bedroom_floor = Feature.create(room_id: 2, room_feature_id: 9)
# #12
# bedroom_wall = Feature.create(room_id: 2, room_feature_id: 18)
# #13
# bedroom_ceiling = Feature.create(room_id: 2, room_feature_id: 4)
# #14
# bedroom_fixtures = Feature.create(room_id: 2, room_feature_id: 1)
# #15
# bedroom_window = Feature.create(room_id: 2, room_feature_id: 16)
# #16
# bedroom_door = Feature.create(room_id: 2, room_feature_id: 7)
# #17
# exterior_roof = Feature.create(room_id: 3, room_feature_id: 17)
# #18
# exterior_wall = Feature.create(room_id: 3, room_feature_id: 18)
# #19
# exterior_pool = Feature.create(room_id: 3, room_feature_id: 19)
# #20
# exterior_landscape = Feature.create(room_id: 3, room_feature_id: 20)
# #21
# exterior_patio = Feature.create(room_id: 3, room_feature_id: 21)
# #22
# exterior_porch = Feature.create(room_id: 3, room_feature_id: 22)
# #23
# bathroom_floor = Feature.create(room_id: 1, room_feature_id: 9)
# #24
# kitchen_wall = Feature.create(room_id: 5, room_feature_id: 18)
# #25
# kitchen_fixtures = Feature.create(room_id: 5, room_feature_id: 2)
# #26
# kitchen_ceiling = Feature.create(room_id: 5, room_feature_id: 4)
# #27
# kitchen_window = Feature.create(room_id: 5, room_feature_id: 16)
# #28
# kitchen_door = Feature.create(room_id: 5, room_feature_id: 7)
# #29
# kitchen_plumbing = Feature.create(room_id: 5, room_feature_id: 11)
# #30
# kitchen_countertops = Feature.create(room_id: 5, room_feature_id: 6)
# #31
# kitchen_cabinents = Feature.create(room_id: 5, room_feature_id: 3)
# #32
# kitchen_appliances = Feature.create(room_id: 5, room_feature_id: 1)
# #33
# kitchen_floor = Feature.create(room_id: 5, room_feature_id: 10)
# #34
# kitchen_closet = Feature.create(room_id: 5, room_feature_id: 5)
# #35
# garage_door = Feature.create(room_id: 4, room_feature_id: 10)
# #36
# garage_ceiling = Feature.create(room_id: 4, room_feature_id: 4)
# #37
# garage_window = Feature.create(room_id: 4, room_feature_id: 16)
# #38
# garage_door = Feature.create(room_id: 4, room_feature_id: 7)
# #39
# garage_wall = Feature.create(room_id: 4, room_feature_id: 18)
# #40
# garage_fixtures = Feature.create(room_id: 4, room_feature_id: 2)
# #41
# living_room_floor = Feature.create(room_id: 6, room_feature_id: 9)
# #42
# living_room_wall = Feature.create(room_id: 6, room_feature_id: 18)
# #43
# living_room_ceiling = Feature.create(room_id: 6, room_feature_id: 4)
# #44
# living_room_fixtures = Feature.create(room_id: 6, room_feature_id: 1)
# #45
# living_room_window = Feature.create(room_id: 6, room_feature_id: 16)
# #46
# living_room_door = Feature.create(room_id: 6, room_feature_id: 7)
# #47
# living_room_closet = Feature.create(room_id: 6, room_feature_id: 5)
# #48
# family_room_wall = Feature.create(room_id: 7, room_feature_id: 18)
# #49
# family_room_ceiling = Feature.create(room_id: 7, room_feature_id: 4)
# #50
# family_room_fixtures = Feature.create(room_id: 7, room_feature_id: 1)
# #51
# family_room_window = Feature.create(room_id: 7, room_feature_id: 16)
# #52
# family_room_door = Feature.create(room_id: 7, room_feature_id: 7)
# #53
# family_room_closet = Feature.create(room_id: 7, room_feature_id: 5)
# #54
# dining_room_floor = Feature.create(room_id: 8, room_feature_id: 9)
# #55
# dining_room_wall = Feature.create(room_id: 8, room_feature_id: 18)
# #56
# dining_room_ceiling = Feature.create(room_id: 8, room_feature_id: 4)
# #57
# dining_room_fixtures = Feature.create(room_id: 8, room_feature_id: 1)
# #58
# dining_room_window = Feature.create(room_id: 8, room_feature_id: 16)
# #59
# dining_room_door = Feature.create(room_id: 8, room_feature_id: 7)
# #60
# dining_room_closet = Feature.create(room_id: 8, room_feature_id: 5)
# #61
# dining_room_floor = Feature.create(room_id: 8, room_feature_id: 9)
# #62
# laundry_room_wall = Feature.create(room_id: 9, room_feature_id: 18)
# #63
# laundry_room_ceiling = Feature.create(room_id: 9, room_feature_id: 4)
# #64
# laundry_room_fixtures = Feature.create(room_id: 9, room_feature_id: 1)
# #65
# laundry_room_window = Feature.create(room_id: 9, room_feature_id: 16)
# #66
# laundry_room_door = Feature.create(room_id: 9, room_feature_id: 7)
# #67
# laundry_room_closet = Feature.create(room_id: 9, room_feature_id: 5)
# #68
# laundry_room_floor = Feature.create(room_id: 9, room_feature_id: 9)
# #69
# dining_room_wall = Feature.create(room_id: 10, room_feature_id: 18)
# #70
# dining_room_ceiling = Feature.create(room_id: 10, room_feature_id: 4)
# #71
# dining_room_fixtures = Feature.create(room_id: 10, room_feature_id: 1)
# #72
# dining_room_window = Feature.create(room_id: 10, room_feature_id: 16)
# #73
# dining_room_door = Feature.create(room_id: 10, room_feature_id: 7)
# #74
# dining_room_closet = Feature.create(room_id: 10, room_feature_id: 5)
# #75
# dining_room_floor = Feature.create(room_id: 10, room_feature_id: 9)
# #76
# hvac = Feature.create(room_id: 11, room_feature_id: 12)
# #77
# electrical = Feature.create(room_id: 12, room_feature_id: 9)
# #78
# plumbing = Feature.create(room_id: 13, room_feature_id: 11)
# #79
# stairs = Feature.create(room_id: 14, room_feature_id: 14)
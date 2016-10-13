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
#31
stairs = Feature.create(name: "Stairs", feature_type: 9)


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
	PriceFeature.create(user_id: 1, feature_id: 31, floor: 1000, ceiling: 2000)
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
	PriceFeature.create(user_id: 2, feature_id: 31, floor: 1000, ceiling: 2000)
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
	PriceFeature.create(user_id: 3, feature_id: 31, floor: 1000, ceiling: 2000)
# Dummy Lenders

lender1 = User.create(name: "John", email: "fasdfs21f@adf.com", phone:"305-551-4212", role: 1, password: "angrybirds", password_confirmation: "angrybirds", address: "120 SW 8 St", city: "Miami", state: "Florida", zip_code: "33130")

lender2 = User.create(name: "Leo", email: "fa12sdfsf2123@adf.com", phone:"305-551-4252", role: 1, password: "angrybirds", password_confirmation: "angrybirds", address: "110 SW 8 St", city: "Miami", state: "Florida", zip_code: "33130")

lender3 = User.create(name: "Walter", email: "fasd121fs1424f@adf.com", phone:"305-551-4272", role: 1, password: "angrybirds", password_confirmation: "angrybirds", address: "120 SW 8 St", city: "Miami", state: "Florida", zip_code: "33130")

# Dummy Lender Policies
	
# Lender1 Policy

LenderUnderwriting.create(user_id: 5, name: "Regular Loan", ltv: 0.80, arv: 0.80, experience: 2, fico: 600, interest_rate: 0.12, loan_min: 20000, loan_max: 2500000, origination_fee: 0.02, term: 6, address: "120 SW 8 St", city: "Miami", state: "Florida", zip_code: "33130", ltc: 0.80, draws: 3, min_draw: 12000, min_final_draw: 0.25)
LenderUnderwriting.create(user_id: 6,name: "Advanced Loan", ltv: 0.85, arv: 0.70, experience: 4, fico: 650, interest_rate: 0.15, loan_min: 20000, loan_max: 1500000, origination_fee: 0.03, term: 8, address: "120 SW 8 St", city: "Miami", state: "Florida", zip_code: "33130", ltc: 0.90, draws: 4, min_draw: 15000, min_final_draw: 0.20)
LenderUnderwriting.create(user_id: 7, name: "High LTV Loan", ltv: 0.95, arv: 0.60, experience: 5, fico: 700, interest_rate: 0.20, loan_min: 20000, loan_max: 1000000, origination_fee: 0.04, term: 12, address: "120 SW 8 St", city: "Miami", state: "Florida", zip_code: "33130", ltc: 1.00, draws: 5, min_draw: 10000, min_final_draw: 0.15)



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
kitchen = Feature.create(name: "Kitchen", feature_type: 1)
#11
bathroom = Feature.create(name: "Bathroom", feature_type: 1)
#12
stairs = Feature.create(name: "Stairs", feature_type: 1)
#13
roof_shingle = Feature.create(name: "Shingle", feature_type: 2)
#14
roof_tile = Feature.create(name: "Tile", feature_type: 2)
#15
roof_metal = Feature.create(name: "Metal", feature_type: 2)
#16
roof_flat = Feature.create(name: "Flat", feature_type: 2)
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
plumbing = Feature.create(name: "Plumbing", feature_type: 3)
#23
hvac = Feature.create(name: "HVAC", feature_type: 1)
#24
electrical = Feature.create(name: "Electrical", feature_type: 1)
#25
demoliton = Feature.create(name: "Demolition", feature_type: 1)

# Rooms

# #1
# flooring = Room.create(name: "Bathroom")
# #2
# bedroom = Room.create(name: "Bedroom")
# #3
# exterior = Room.create(name: "Exterior")
# #4
# garage = Room.create(name: "Garage")
# #5
# kitchen = Room.create(name: "Kitchen")
# #6
# living_room = Room.create(name: "Living Room")
# #7
# family_room = Room.create(name: "Family Room")
# #8
# dining_room = Room.create(name: "Dining Room")
# #9
# laundry_room = Room.create(name: "Laundry Room")
# #10
# other_room = Room.create(name: "Other Room")
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


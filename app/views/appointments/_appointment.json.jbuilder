json.extract! appointment, :id, :name, :phone_number, :time, :time_zone, :bid_id, :contractor_bid_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
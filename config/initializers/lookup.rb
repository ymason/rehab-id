Timezone::Lookup.config(:google) do |c|
  c.api_key = ENV['google_time_zone_api']
  # c.client_id = ENV['google_client_id'] # if using 'Google for Work'
end
json.extract! event, :id, :date, :theme, :venue_name, :state, :city, :country, :venue_contact_email, :venue_contact_name, :rent_again, :created_at, :updated_at
json.url event_url(event, format: :json)

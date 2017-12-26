require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :theme => "Theme",
      :venue_name => "Venue Name",
      :state => "State",
      :city => "City",
      :country => "Country",
      :venue_contact_email => "Venue Contact Email",
      :venue_contact_name => "Venue Contact Name",
      :rent_again => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Theme/)
    expect(rendered).to match(/Venue Name/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Venue Contact Email/)
    expect(rendered).to match(/Venue Contact Name/)
    expect(rendered).to match(/false/)
  end
end

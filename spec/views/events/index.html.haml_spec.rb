require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :theme => "Theme",
        :venue_name => "Venue Name",
        :state => "State",
        :city => "City",
        :country => "Country",
        :venue_contact_email => "Venue Contact Email",
        :venue_contact_name => "Venue Contact Name",
        :rent_again => false
      ),
      Event.create!(
        :theme => "Theme",
        :venue_name => "Venue Name",
        :state => "State",
        :city => "City",
        :country => "Country",
        :venue_contact_email => "Venue Contact Email",
        :venue_contact_name => "Venue Contact Name",
        :rent_again => false
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => "Theme".to_s, :count => 2
    assert_select "tr>td", :text => "Venue Name".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Venue Contact Email".to_s, :count => 2
    assert_select "tr>td", :text => "Venue Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

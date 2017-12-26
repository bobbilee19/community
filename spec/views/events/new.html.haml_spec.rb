require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      :theme => "MyString",
      :venue_name => "MyString",
      :state => "MyString",
      :city => "MyString",
      :country => "MyString",
      :venue_contact_email => "MyString",
      :venue_contact_name => "MyString",
      :rent_again => false
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_theme[name=?]", "event[theme]"

      assert_select "input#event_venue_name[name=?]", "event[venue_name]"

      assert_select "input#event_state[name=?]", "event[state]"

      assert_select "input#event_city[name=?]", "event[city]"

      assert_select "input#event_country[name=?]", "event[country]"

      assert_select "input#event_venue_contact_email[name=?]", "event[venue_contact_email]"

      assert_select "input#event_venue_contact_name[name=?]", "event[venue_contact_name]"

      assert_select "input#event_rent_again[name=?]", "event[rent_again]"
    end
  end
end

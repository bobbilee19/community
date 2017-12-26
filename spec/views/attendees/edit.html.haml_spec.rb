require 'rails_helper'

RSpec.describe "attendees/edit", type: :view do
  before(:each) do
    @attendee = assign(:attendee, Attendee.create!(
      :user => nil,
      :event => nil
    ))
  end

  it "renders the edit attendee form" do
    render

    assert_select "form[action=?][method=?]", attendee_path(@attendee), "post" do

      assert_select "input#attendee_user_id[name=?]", "attendee[user_id]"

      assert_select "input#attendee_event_id[name=?]", "attendee[event_id]"
    end
  end
end

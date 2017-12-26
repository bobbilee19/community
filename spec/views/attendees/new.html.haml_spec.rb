require 'rails_helper'

RSpec.describe "attendees/new", type: :view do
  before(:each) do
    assign(:attendee, Attendee.new(
      :user => nil,
      :event => nil
    ))
  end

  it "renders new attendee form" do
    render

    assert_select "form[action=?][method=?]", attendees_path, "post" do

      assert_select "input#attendee_user_id[name=?]", "attendee[user_id]"

      assert_select "input#attendee_event_id[name=?]", "attendee[event_id]"
    end
  end
end

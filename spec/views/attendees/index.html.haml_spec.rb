require 'rails_helper'

RSpec.describe "attendees/index", type: :view do
  before(:each) do
    assign(:attendees, [
      Attendee.create!(
        :user => nil,
        :event => nil
      ),
      Attendee.create!(
        :user => nil,
        :event => nil
      )
    ])
  end

  it "renders a list of attendees" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

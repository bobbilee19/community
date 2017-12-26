require 'rails_helper'

RSpec.describe "attendees/show", type: :view do
  before(:each) do
    @attendee = assign(:attendee, Attendee.create!(
      :user => nil,
      :event => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

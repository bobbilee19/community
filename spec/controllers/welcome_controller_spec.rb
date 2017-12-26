require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  describe "GET home" do
    it "renders the home template" do
      login_with create( :user )
      get :home
      expect(response).to render_template("home")
    end
  end
end

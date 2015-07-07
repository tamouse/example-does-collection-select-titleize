require 'rails_helper'

RSpec.describe "MyThings", type: :request do
  describe "GET /my_things" do
    it "works! (now write some real specs)" do
      get my_things_path
      expect(response).to have_http_status(200)
    end
  end
end

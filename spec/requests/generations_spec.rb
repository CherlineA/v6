require 'rails_helper'

RSpec.describe "Generations", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/generations/index"
      expect(response).to have_http_status(:success)
    end
  end

end

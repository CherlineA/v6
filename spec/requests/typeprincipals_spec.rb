require 'rails_helper'

RSpec.describe "Typeprincipals", type: :request do
  describe "GET /index," do
    it "returns http success" do
      get "/typeprincipals/index,"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show," do
    it "returns http success" do
      get "/typeprincipals/show,"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create," do
    it "returns http success" do
      get "/typeprincipals/create,"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update," do
    it "returns http success" do
      get "/typeprincipals/update,"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy," do
    it "returns http success" do
      get "/typeprincipals/destroy,"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /showpokemons" do
    it "returns http success" do
      get "/typeprincipals/showpokemons"
      expect(response).to have_http_status(:success)
    end
  end

end

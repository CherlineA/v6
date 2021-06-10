require 'rails_helper'

RSpec.describe "TypePrincipals", type: :request do
  describe "GET /index," do
    it "returns http success" do
      get "/type_principals/index,"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show," do
    it "returns http success" do
      get "/type_principals/show,"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create," do
    it "returns http success" do
      get "/type_principals/create,"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update," do
    it "returns http success" do
      get "/type_principals/update,"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy," do
    it "returns http success" do
      get "/type_principals/destroy,"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /showpokemons" do
    it "returns http success" do
      get "/type_principals/showpokemons"
      expect(response).to have_http_status(:success)
    end
  end

end

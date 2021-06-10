require 'rails_helper'

RSpec.describe "Typesecondaires", type: :request do
  describe "GET /index," do
    it "returns http success" do
      get "/typesecondaires/index,"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show," do
    it "returns http success" do
      get "/typesecondaires/show,"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create," do
    it "returns http success" do
      get "/typesecondaires/create,"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update," do
    it "returns http success" do
      get "/typesecondaires/update,"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy," do
    it "returns http success" do
      get "/typesecondaires/destroy,"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /showpokemons" do
    it "returns http success" do
      get "/typesecondaires/showpokemons"
      expect(response).to have_http_status(:success)
    end
  end

end

require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #welcome" do
    it "returns http success" do
      get :welcome
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #find_workers" do
    it "returns http success" do
      get :find_workers
      expect(response).to have_http_status(:success)
    end
  end

end

require 'rails_helper'

RSpec.describe "ProfessionTypes", type: :request do
  describe "GET /profession_types" do
    it "works! (now write some real specs)" do
      get profession_types_path
      expect(response).to have_http_status(200)
    end
  end
end

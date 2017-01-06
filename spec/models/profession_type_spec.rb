require 'rails_helper'

RSpec.describe ProfessionType, type: :model do

  let(:profession_type) { ProfessionType.new }

  context 'Validations' do
    it "is not valid without a title" do
      expect(profession_type).to_not be_valid
    end

    it "is not valid with a title less than 2 characters in length" do
      profession_type.title = "a"
      expect(profession_type).to_not be_valid
    end

    it "is valid with a title has more than 1 character in length" do
      profession_type.title = "a"
      expect(profession_type).to_not be_valid
    end
  end

  context "ProfessionType" do
    it "has none to begin with" do
      expect(ProfessionType.count).to eq 0
    end

    it "has one after adding one" do
      ProfessionType.create(title: 'NewProfessionType')
      expect(ProfessionType.count).to eq 1
    end

    it "has none after one was created in a previous example" do
      expect(ProfessionType.count).to eq 0
    end
  end
end

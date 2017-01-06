require 'rails_helper'

RSpec.describe Profession, type: :model do
  let(:profession_type) { ProfessionType.create(title: 'NewProfessionType') }
  let(:profession) { Profession.new }

  context 'Validations' do
    it "is valid with valid attributes" do
      profession.name = 'Testing'
      profession.profession_type = profession_type
      expect(profession).to be_valid
    end

    it "is not valid without a name" do
      profession.name = nil
      profession.profession_type = profession_type
      expect(profession).to_not be_valid
    end

    it "is not valid without a profession_type" do
      profession.name = "Valid profession"
      profession.profession_type = nil
      expect(profession).to_not be_valid
    end

    it "is not valid with a name less than 2 characters in length" do
      profession.name = "a"
      expect(profession).to_not be_valid
    end
  end

  context "Profession" do
    it "has none to begin with" do
      expect(Profession.count).to eq 0
    end

    it "has one after adding one" do
      Profession.create(name: 'NewProfession', profession_type: profession_type)
      expect(Profession.count).to eq 1
    end

    it "has none after one was created in a previous example" do
      expect(Profession.count).to eq 0
    end
  end
end

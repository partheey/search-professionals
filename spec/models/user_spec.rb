require 'rails_helper'

RSpec.describe User, type: :model do

  context 'Validations' do
    it "is valid with valid attributes" do
      user = FactoryGirl.build(:user, :confirmed)
      expect(user).to be_valid
    end

    it "is not valid without a firstname" do
      user = FactoryGirl.build(:user, :confirmed)
      user.firstname = nil
      expect(user).to_not be_valid
    end

    it "is not valid without an email" do
      user = FactoryGirl.build(:user, :confirmed)
      user.email = nil
      expect(user).to_not be_valid
    end

    it "is not valid with a firstname less than 2 characters in length" do
      user = FactoryGirl.build(:user, :confirmed)
      user.firstname = 'n'
      expect(user).to_not be_valid
    end

    it "is not valid with a firstname more than 100 characters in length" do
      user = FactoryGirl.build(:user, :confirmed)
      user.firstname = Faker::Lorem.characters(101)
      expect(user).to_not be_valid
    end

    it "is not valid with a lastname less than 2 characters in length" do
      user = FactoryGirl.build(:user, :confirmed)
      user.lastname = 'n'
      expect(user).to_not be_valid
    end

    it "is not valid with a lastname more than 100 characters in length" do
      user = FactoryGirl.build(:user, :confirmed)
      user.lastname = Faker::Lorem.characters(101)
      expect(user).to_not be_valid
    end
  end

  context "User" do
    it "has none to begin with" do
      expect(User.count).to eq 0
    end

    it "has one after adding one" do
      FactoryGirl.create(:user, :confirmed)
      expect(User.count).to eq 1
    end

    it "has none after one was created in a previous example" do
      expect(User.count).to eq 0
    end
  end

end

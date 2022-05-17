require 'rails_helper'

RSpec.describe User, type: :model do

    it "is valid with valid attributes" do
        user = User.create(username: "admin", password_digest: "test")
        expect(user).to be_valid
    end

    it "is not valid without username" do
        user = User.create(username: "", password_digest: "test")
        expect(user).to_not be_valid
    end
end
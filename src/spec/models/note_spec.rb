require 'rails_helper'

RSpec.describe Note, type: :model do

    it "is valid with valid attributes" do
        user = User.create(username: "admin", password_digest: "test")
        note = Note.create(title: "test", description: "test", user_id: user.id)
        expect(note).to be_valid
    end

    it "is not valid without a user" do
        note = Note.create(title: "test", description: "test")
        expect(note).to_not be_valid
    end

    it "is not valid without a title" do
        user = User.create(username: "admin", password_digest: "test")
        note = Note.create(title: "", description: "test", user_id: user.id)
        expect(note).to_not be_valid
    end
end
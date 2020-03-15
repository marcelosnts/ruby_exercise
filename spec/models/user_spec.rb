require 'rails_helper'

RSpec.describe User, type: :model do
  subject {described_class.new(
    full_name: "John Doe",
    email: "john.doe@email.com",
    avatar_image: "johndoe.com/image/profile-pic.jpg",
    role: "Admin",
    password: "123456",
    password_confirmation: "123456"
  )}
  
  it "is valid with valid atributes" do
    expect(subject).to be_valid
  end
  
  it "is not valid without a full_name" do
    subject.full_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a avatar_image" do
    subject.avatar_image = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a role" do
    subject.role = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a password" do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a password_confirmation" do
    subject.password_confirmation = nil
    expect(subject).to_not be_valid
  end
end

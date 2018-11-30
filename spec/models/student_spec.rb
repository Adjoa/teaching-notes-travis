require 'rails_helper'


RSpec.describe Student, type: :model do
  it "must belong to a user" do
    expect(Student.new(name: "Bob", email: "bob1@email.com")).not_to be_valid  
  end
  
  it "is not valid without a name" do
    user = create(:user)
    expect(user.students.new(email: "bob1@email.com")).not_to be_valid
  end
  
  it "is not valid without a valid email" do
    user = create(:user)
    expect(user.students.new(name: "Bob")).not_to be_valid
  end
  
  it "is valid with valid attributes" do
    user = create(:user)
    expect(user.students.new(name: "Bob", email: "bob1@email.com")).to be_valid
  end
end

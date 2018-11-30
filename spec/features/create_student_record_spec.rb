require "rails_helper"

feature "Creating a student record" do
  scenario "should fail if student is without a name" do
    user = create(:user)
    
    login_as(user, :scope => :user)
    visit "/"
    click_on "Add Student"
    fill_in "Email", with: "bob1@email.com"
    click_on "Create Student"
    
    expect(page).to have_text("Name can't be blank")
  end
  
  scenario "should fail if student is without an email address" do
    user = create(:user)
    
    login_as(user, :scope => :user)
    visit "/"
    click_on "Add Student"
    fill_in "Name", with: "Bob"
    click_on "Create Student"
    
    expect(page).to have_text("Email can't be blank")
  end
  
  scenario "should succeed if student name and email are submitted" do
    user = create(:user)
    
    login_as(user, :scope => :user)
    visit "/"
    click_on "Add Student"
    fill_in "Name", with: "Bob"
    fill_in "Email", with: "bob1@email.com"
    click_on "Create Student"
    
    expect(page).to have_text("Student Info")
    expect(page).to have_text("Bob")
  end
end
require "rails_helper"

feature "Log in" do
  scenario "as a user without students" do
    user = create(:user)
    
    login_as(user, :scope => :user)
    visit "/"
    
    expect(page).to have_text "No records"
  end
  
  scenario "as a user with students" do
    user = create(:user)
    user.students.create(name: "James Brown", email: "jamesbrown@email.com")
    
    login_as(user, :scope => :user)
    visit "/"
    
    expect(page).to have_text("James Brown")
  end
end
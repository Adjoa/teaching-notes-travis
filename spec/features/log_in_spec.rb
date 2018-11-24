require "rails_helper"

feature "Log in" do
  scenario "as a user without students" do
    user = create(:user)
    login_as(user, :scope => :user)
    
    visit "/"
    
    expect(page).to have_text "No records"
  end
end
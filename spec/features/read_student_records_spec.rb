require "rails_helper"

feature "Accessing the student index" do
  scenario "should list only records associated with the logged in user" do
    user_logged_in = create(:sample_user)
    user_logged_in.students.create(name: "Bob", email: "bob1@email.com")
    user_logged_out = create(:sample_user)
    user_logged_out.students.create(name: "Sally", email: "sally@email.com")
    
    login_as(user_logged_in, :scope => :user)
    visit "/"
    
    expect(page).to_not have_text("Sally")
  end
end
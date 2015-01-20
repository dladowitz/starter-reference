Given /Guest visits the landing_path/ do
  visit root_path
end

Then /they can see product features/ do
  expect(page).to have_content "Automatic Weigh Ins"
end

And /they click on the 'register' link/ do
  click_link "Register to Hear More"
end

Then /they see the register page/ do
  uri = URI.parse(current_url)
  uri.path.should == register_path
end

And /they fill out the register form/ do
  fill_in "email_address", with: "pepper@stark_labs.com"
  # select "send_recommendation",  from: "expiry-year"
  click_button "Register Now"
end

Then /they see the 'success' page/ do
  expect(page).to have_content "Thanks for Registering"
end

Then /they fill out the new user form/ do
  uri = URI.parse(current_url)
  expect(uri.path).to eq new_user_path

  fill_in "user_name",       with: "Andre"
  fill_in "user_user_email", with: "Andre.Ampere@gmail.com"
  fill_in "user_password",   with: "asdfasdf"

  click_button "Sign Up"
end

And /they see the user homepage/ do
  uri = URI.parse(current_url)
  expect(uri.path).to eq user_show_path

  expect(page).to have_content "Thanks for Signing Up"
end

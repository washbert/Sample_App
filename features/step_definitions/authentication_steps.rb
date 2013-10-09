Given /^a user visits the signin page$/ do
	visit signin_path
end

When /^he submits invalid signin information$/ do
	click_button "Sign In"
end

Then /^he should see an error message$/ do
	expect(page).to have_selector('div.alert.alert-error')
end

And /^the user has an account$/ do
	@user = User.create(name: "Bryan Haye",email: "bryan@washbert.com",
						password: "foobar",password_confirmation: "foobar")
end

When /^the user submits valid signin information$/ do
	fill_in "Email", 	with: @user.email
	fill_in "Password",	with: @user.password
	click_button "Sign In"
end

Then /^he should see his profile page$/ do
	expect(page).to have_title(@user.name)
end

And /^he should see a signout link$/ do
	expect(page).to have_link('Sign out', href:signout_path)
end
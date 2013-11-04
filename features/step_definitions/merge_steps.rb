Given /^I am not authenticated$/ do
  %Q{
  	follow "Sign out"
  } 
end

Given /^I am a new, authenticated user$/ do
  email = 'testing@man.net'
  password = 'secretpass'
  User.new(:email => email, :password => password, :password_confirmation => password).save!
  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Sign in"

end

Given /^the following articles exist:$/ do |articles_table|
  articles_table.hashes.each do |article|
    Article.create!(article)
  end
end

Given /^the following comments exist:$/ do |comments_table|
  comments_table.hashes.each do |comment|
    Comment.create!(comment)
  end
end

Given /^I am logged into the non-admin panel$/ do
  visit '/accounts/login'
  fill_in 'user_login', :with => 'fake_user'
  fill_in 'user_password', :with => 'fake_pw'
  click_button 'Login'
end

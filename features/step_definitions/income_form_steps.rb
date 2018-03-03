Given("he is on home page") do
  visit root_path
end

Given("he fills in {string} with {string}") do |input, value|
  fill_in(input, with: value)
end

Given("he clicks {string}") do |button|
  click_link_or_button button
end

When("I should be redirected to landing page") do
  visit home_index_path
end

Given("I am logged in as {string}") do |user|
  user = User.find_by(email: user)
  login_as(user, scope: :user)
end

Then("he should see {string}") do |string|
  expect(page).to have_content string
end

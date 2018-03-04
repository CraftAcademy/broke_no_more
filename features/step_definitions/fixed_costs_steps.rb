Given("I am on home page") do
  visit root_path
end

Then("I should see {string} form") do |string|
  expect(page).to have_content string
end

Then("I fill in {string} field with {string}") do |input, value|
  fill_in input, with: value
end

Given("{string} is logged in") do |email|
  user = User.find_by(email: email)
  login_as(user, scope: :user)
end

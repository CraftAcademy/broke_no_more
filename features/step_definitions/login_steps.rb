Given("following user exist") do |table|
 table.hashes.each do |user|
   FactoryBot.create(:user, user)
 end
end

Given("I am on the landing-page") do
  visit root_path
end

Given("I click {string}") do |button|
  click_on button
end

When("I fill in {string} with {string}") do |input, value|
fill_in(input, :with => value)
end

When("I click {string} button") do |button|
  click_on(button)
end

Given("I am logged in") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("show me the page") do
  pending # Write code here that turns the phrase above into concrete actions
end

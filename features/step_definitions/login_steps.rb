Given("following user exist") do |table|
 table.hashes.each do |user|
   FactoryBot.create(:user, user)
 end
end

Given("I am on the landing-page") do
  visit root_path 
end

Given("I click {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I fill in {string} with {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click {string} button") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am logged in") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("show me the page") do
  pending # Write code here that turns the phrase above into concrete actions
end

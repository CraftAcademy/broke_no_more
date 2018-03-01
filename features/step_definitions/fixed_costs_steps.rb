Given("I am on home page") do
  visit root_path
end

When("I click on {string}") do |button|
  click_link_or_button button
end

Then("I should see {string} form") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I fill in {string} field with {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

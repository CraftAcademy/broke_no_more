Given("I am on home page") do
  visit root_path
end

When("I click on {string}") do |button|
  click_link_or_button button
end

Then("I should see {string} form") do |string|
  expect(page).to have_content string
end

Then("I fill in {string} field with {string}") do |input, value|
  fill_in input, with: value
end

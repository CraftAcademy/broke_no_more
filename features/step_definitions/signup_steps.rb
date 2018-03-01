Given("User visits the site") do
  visit root_path
end

Then("User clicks on {string} button") do |button|
  click_on(button)
end

Then("I fill {string} with {string}") do |input, value|
  fill_in input, with: value
end

Then("I click on {string}") do |button|
  click_on(button)
end

Then("I should see message {string}") do |message|
  expect(page).to have_content(message)
end

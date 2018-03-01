Given("he is on home page") do
  visit root_path
end

Given("he sees {string} form") do |string|
  expect(page).to have_content string
end

Given("he fills in {string} with {string}") do |input, value|
  fill_in(input, :with => value)
end

Given("he clicks {string}") do |submit|
  click_link_or_button submit  # Write code here that turns the phrase above into concrete actions
end

Then("he should see {string}") do |string|
  expect(page).to have_content string
end

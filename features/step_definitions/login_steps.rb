Given("following user exist") do |table|
  table.hashes.each do |user|
   FactoryBot.create(:user, user)
  end
end

Given("I click {string}") do |button|
  click_on button
end

When("I fill in {string} with {string}") do |input, value|
  fill_in input, with: value
end

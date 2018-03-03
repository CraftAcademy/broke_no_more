Then("I should be redirected to the home page") do
  expect(page.current_path).to eq root_path
end

Then("my account should state that I signed up with Facebook") do
  pending # Write code here that turns the phrase above into concrete actions
end

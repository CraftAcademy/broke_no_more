Then("I should be redirected to the home page") do
  sleep 3
  expect(page).to eq root_path
end

Then("my account should state that I signed up with Facebook") do
  user = User.last
  expect(user.provider).to eq 'facebook'
end

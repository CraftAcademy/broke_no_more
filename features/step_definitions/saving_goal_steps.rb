Given("I log in as {string}") do |user|
  user = User.find_by(email: user)
  login_as(user, scope: :user)
end

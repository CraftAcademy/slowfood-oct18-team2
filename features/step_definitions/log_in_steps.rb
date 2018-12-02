Given('the following user exists') do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end

Given("I visit login page") do
    visit new_user_session_path
end

When("I have logged in") do
    steps %{
        Given I visit login page 
        And I fill in "Email" with 'Don@trump.com'
        And I fill in "Password" with 'maga2020'
        And I click 'Log in'
    }
end
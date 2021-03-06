Then('I am on users page') do
    expect(current_path).to eq user_registration_path
end

Then('I see {string}') do |content|
    expect(page).to have_content content
end

Then('I am on landing page') do
    expect(current_path).to eq root_path
end

Then('I should see the logo') do
    expect(page).to have_css '#logo'
end

Then('I should see {string}') do |word|
    expect(page).to have_content word
end

Then('show me the page') do
    save_and_open_page
end
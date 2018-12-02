Given('I visit the site') do
    visit root_path
end

Given('the following products exists') do |table|
    table.hashes.each do |product|
        category = Category.find_by(category: product[:category])
        product.except!('category')
        Product.create(product.merge(category: category))
    end
end

Given('the following categories exist') do |table|
    table.hashes.each do |category|
        Category.create!(category)
    end
end

Given('I am on user registration page') do
    visit new_user_registration_path
end

Given('I fill in {string} with {string}') do |element, value|
    fill_in element, with: value
end

Given('I click {string}') do |element|
    click_on element
end

And('stop') do
    binding.pry
end
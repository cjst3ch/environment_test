# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'sam wise'
    fill_in 'Price', with: '10.56'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    # expect(page).to have_content('sam wise')
  end
end

# RSpec.describe 'Creating a book', type: :feature do
#   scenario 'valid inputs' do
#     visit new_book_path
#     fill_in 'Title', with: 'harry potter'
#     click_on 'Create Book'
#     visit books_path
#     expect(page).to have_content('harry potter')
#   end
# end

RSpec.describe 'Editing a book author', type: :feature do
  scenario 'valid inputs' do
    visit edit_book_path
    fill_in 'Author', with: 'name edit'
    click_on 'Update Book'
    visit books_path
    expect(page).to have_content('name edit')
  end
end

RSpec.describe 'Editing a book price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Price', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Editing a book publish date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Date', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

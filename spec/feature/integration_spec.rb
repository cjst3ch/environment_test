# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Lord of the Rings'
    fill_in 'Author', with: 'J.R.R. Tolkein'
    fill_in 'Price', with: 10.56
    fill_in 'Date', with: '2020-09-28'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Lord of the Rings')
    expect(page).to have_content('J.R.R. Tolkein')
    expect(page).to have_content(10.56)
    expect(page).to have_content('2020-09-28')
  end
end
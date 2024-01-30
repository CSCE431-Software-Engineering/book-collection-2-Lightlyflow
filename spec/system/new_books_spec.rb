require 'rails_helper'

RSpec.describe "NewBooks", type: :system do
  before do
    driven_by(:rack_test)
  end

  it "flash sunny day" do 
    visit '/books/new'
    fill_in 'book_title', with: 'Inferno'
    fill_in 'book_author', with: 'Dante Alighieri'
    fill_in 'book_price', with: 20
    fill_in 'book_published', with: '1300-01-01'
    click_on "Create Book"

    # Check for flash
    expect(page).to have_content('Book created')
  end

  it "flash rainy day" do 
    visit '/books/new'
    fill_in 'book_title', with: '       '
    click_on "Create Book"

    # Check for flash
    expect(page).to have_content('Error creating book')
  end
  
end

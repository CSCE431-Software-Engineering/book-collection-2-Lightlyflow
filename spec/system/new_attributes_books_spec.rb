require 'rails_helper'

RSpec.describe "NewAttributesBooks", type: :system do
  before do
    driven_by(:rack_test)
  end

  it "author sunny day" do 
    visit '/books/new'
    fill_in 'book_title', with: 'Inferno'
    fill_in 'book_author', with: 'Dante Alighieri'
    click_on "Create Book"

    # Check for all attributes
    expect(page).to have_content('Inferno')
    expect(page).to have_content('Dante Alighieri')
  end

  it "price sunny day" do 
    visit '/books/new'
    fill_in 'book_title', with: 'Inferno'
    fill_in 'book_price', with: 20
    click_on "Create Book"

    # Check for all attributes
    expect(page).to have_content('Inferno')
    expect(page).to have_content(20)
  end

  it "published sunny day" do 
    visit '/books/new'
    fill_in 'book_title', with: 'Inferno'
    fill_in 'book_published', with: '1300-01-01'
    click_on "Create Book"

    # Check for all attributes
    expect(page).to have_content('Inferno')
    expect(page).to have_content('1300-01-01')
  end

  it "integration test sunny day" do 
    visit '/books/new'
    fill_in 'book_title', with: 'Inferno'
    fill_in 'book_price', with: 20
    fill_in 'book_author', with: 'Dante Alighieri'
    fill_in 'book_published', with: '1300-01-01'
    
    click_on "Create Book"

    # Check for all attributes
    expect(page).to have_content('Inferno')
    expect(page).to have_content('Dante Alighieri')
    expect(page).to have_content(20)
    expect(page).to have_content('1300-01-01')
  end
end

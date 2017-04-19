require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the path to score', {:type => :feature}) do
  it('processes the user inputted word, and returns corresponding scrabble score') do
    visit('/')
    fill_in('score', :with => 'Epicodus')
    click_button('Get Score')
    expect(page).to have_content('13')
  end
end

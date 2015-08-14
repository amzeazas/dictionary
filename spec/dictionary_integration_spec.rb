require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the dictionary path', {:type => :feature}) do
  it('processes the user entry and adds it to the list of words') do
    visit('/')
    fill_in('word', :with => 'Harley Quinn')
    click_button('Add')
    expect(page).to have_content("Success!")
  end
end

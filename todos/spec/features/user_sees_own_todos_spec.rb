require 'rails_helper'

feature 'User sees own todos' do
  scenario 'Doesnt see others todos' do
    Todo.create!(title: "Buy Milk", email: "someone_else@example.com")

    sign_in_as "someone@example.com"

    expect(page).not_to have_css ".todos li": "Buy Milk"
  end
end

require 'rails_helper'

feature 'User creates todo' do
  scenario 'Successfully' do
    sign_in

    add_todo('First todo')

    expect(page).to display_todo('First todo')
  end
end

require 'rails_helper'

feature 'User completes todo' do
  scenario 'successfully' do
    sign_in_as ("test@test.com")

    add_todo('Tester todo')
    click_on 'Todone!'

    expect(page).to display_completed_todo('Tester todo')
  end
end

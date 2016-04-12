require 'rails_helper'

feature 'User completes todo' do
  scenario 'successfully' do
    sign_in_as ("test@test.com")

    click_on 'Create Todo'
    fill_in 'Title', with: 'Tester todo'
    click_on 'Submit'
    click_on 'Todone!'

    expect(page).to have_css '.todos li.completed', text: 'Tester todo'
  end
end

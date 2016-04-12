require 'rails_helper'

feature 'User creates todo' do
  scenario 'Successfully' do
    sign_in

    click_on 'Create Todo'
    fill_in 'Title', with: 'First todo'
    click_on 'Submit'

    expect(page).to have_css '.todos li', text: 'First todo'
  end
end

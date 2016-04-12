require 'rails_helper'

require 'rails_helper'

feature 'User completes todo' do
  scenario 'successfully' do
    sign_in_as ("test@test.com")

    add_todo('Tester todo')
    click_on('Todone!')
    click_on 'Incomplete!'

    expect(page).not_to display_completed_todo('Tester todo')
    expect(page).to display_todo('Tester todo')
  end
end

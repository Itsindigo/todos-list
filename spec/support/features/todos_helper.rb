module Features
  def add_todo(title)
    click_on 'Create Todo'
    fill_in 'Title', with: title
    click_on 'Submit'
  end

  def display_todo(todo_content)
    have_css '.todos li', text: todo_content
  end

  def display_completed_todo(todo_content)
    have_css '.todos li.completed', text: todo_content
  end
end

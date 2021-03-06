require 'rails_helper'

describe 'todo completed' do

  it "returns true if completed at: is set" do
    todo = Todo.new(completed_at: Time.current)

    expect(todo).to be_completed
  end

  it "returns false if completed at: is nil" do
    todo = Todo.new(completed_at: nil)

    expect(todo).not_to be_completed
  end
end

describe 'todo complete!' do
  it "should update completed at" do
    todo = Todo.create!(completed_at: nil)

    todo.complete!

    todo.reload

    expect(todo).to be_completed
  end

end

describe 'mark_incomplete!' do
  it "should be marked incomplete" do
    todo = Todo.create!(completed_at: Time.now)

    todo.mark_incomplete!

    expect(todo).not_to be_completed
  end
end

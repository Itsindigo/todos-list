class User

  def initialize(email)
    @email = email
  end

  def todos
    @todos = Todo.where(email: @email)
  end

  def signed_in?
    @email.present?
  end

end

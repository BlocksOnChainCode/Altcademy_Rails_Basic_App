class UsersController < ApplicationController
  def create
    # Create the dummy harcode user
    user = User.create(name: "John Doe", email: "tesstMail@gmail.com", password: "12345678")    
  end
end

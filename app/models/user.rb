class User < ApplicationRecord
  # bcrypt will hash the password and store it in the password_digest column
  has_secure_password
  # This is a one-to-many relationship. A user has many posts.
  has_many :posts
end

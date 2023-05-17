class User < ApplicationRecord
  # This is a one-to-many relationship. A user has many posts.
  has_many :posts
end

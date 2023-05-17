class Post < ApplicationRecord
  # This is a one-to-many relationship. A post belongs to a user.
  belongs_to :user
end

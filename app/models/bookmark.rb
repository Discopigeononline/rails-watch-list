class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie_id, uniqueness: {
    scope: [:list_id],
    message: 'This movie has already been added to the list'
  }
  validates :comment, length: { minimum: 6 }, allow_blank: false
end

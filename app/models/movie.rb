class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, :overview, presence: true
  validates :title, uniqueness: true

  before_destroy :check_if_bookmarked

  private

  def check_if_bookmarked

  end
end

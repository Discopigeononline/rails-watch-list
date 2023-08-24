class List < ApplicationRecord
  has_many :bookmarks, dependent: delete
  has_many :movies, through :bookmarks

  validates :name, uniqueness: true
end

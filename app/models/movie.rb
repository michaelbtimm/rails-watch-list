class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  validates :title, uniqueness: { case_sensitive: false }
  validates :overview, uniqueness: { case_sensitive: false }
  validates :title, presence: true
  validates :overview, presence: true

end

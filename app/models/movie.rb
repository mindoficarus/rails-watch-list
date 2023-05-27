class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  validates :title, :overview, presence: true
  validates :title, uniqueness: true
  has_many :lists, through: :bookmarks
end

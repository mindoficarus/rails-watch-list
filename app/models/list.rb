class List < ApplicationRecord
  # Asociaciones
  has_many :bookmarks, dependent: :destroy # El destroy hará que se elimine una lista la cual está linkeada se eliminan los bookmark dentro.
  has_many :movies, through: :bookmarks

  # Validaciones
  validates :name, presence: true
  validates :name, uniqueness: true
end

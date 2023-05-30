class Bookmark < ApplicationRecord
  # Asociaciones
  belongs_to :movie
  belongs_to :list

  # Validaciones
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id, message: "Solo debe existir una pelicula por c/ lista" }
end

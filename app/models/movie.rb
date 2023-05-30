class Movie < ApplicationRecord
	#Asociaciones
	has_many :bookmarks

	#Validaciones
	validates :title, uniqueness: true
	validates :title, :overview, presence: true # Ni title, ni overview pueden estar vacios.
end 

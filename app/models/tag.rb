class Tag < ApplicationRecord
	has_many :taggings
	has_many :entries, through: :taggings

	validates :name, presence: true
end

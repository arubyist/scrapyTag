class Entry < ApplicationRecord

	has_many :taggings
	has_many :tags, through: :taggings


	validates :title, presence: true
	validates :link, presence: true
end

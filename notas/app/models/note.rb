class Note < ApplicationRecord
	validates :texto, presence: true
end

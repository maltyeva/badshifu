class Industry < ApplicationRecord
	has_many :workers
	has_attachment :photo

	validates :description, uniqueness: true 
end

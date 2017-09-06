class Industry < ApplicationRecord
	has_many :workers
	has_attachment :photo

	validates :description, uniqueness: true 


	def self.search(search)
	  where("description LIKE ?", "%#{search}%") 
	end

end

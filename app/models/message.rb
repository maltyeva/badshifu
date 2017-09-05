class Message < ApplicationRecord
	validates :name, :email, :content, presence: true
end

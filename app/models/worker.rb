class Worker < ApplicationRecord
  belongs_to :industry
  has_many :reviews, dependent: :destroy

  # validations
  validates :wechat, uniqueness: true


  	def self.search(search)
	  where("location LIKE ?", "%#{search}%") 
	end
end

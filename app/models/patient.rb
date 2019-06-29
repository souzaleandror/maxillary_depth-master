class Patient < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: :slugged
	
	validates :name, :date_birth, presence: true
	has_many :exams, dependent: :destroy
end

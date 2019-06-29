class TypesExam < ApplicationRecord
	extend FriendlyId
  friendly_id :name, use: :slugged
  
  validates :name, presence: true
  has_many :exams, dependent: :nullify
end
class Point < ApplicationRecord
  validates :x, :y, presence: true
  enum point_type: [ :point_n , :point_a, :point_po, :point_or ]

  has_one :point_n_exams, class_name: "Exam", foreign_key: "point_n_id", dependent: :destroy
  has_one :point_a_exams, class_name: "Exam", foreign_key: "point_a_id", dependent: :destroy
  has_one :point_po_exams, class_name: "Exam", foreign_key: "point_po_id", dependent: :destroy
  has_one :point_or_exams, class_name: "Exam", foreign_key: "point_or_id", dependent: :destroy
end
class Exam < ApplicationRecord

  validates :patient, :point_n, :point_a, :point_po, :point_or, presence: true

  belongs_to :patient
  belongs_to :types_exam, optional: true
  belongs_to :point_n, :class_name => "Point", dependent: :destroy
  belongs_to :point_a, :class_name => "Point", dependent: :destroy
  belongs_to :point_po, :class_name => "Point", dependent: :destroy
  belongs_to :point_or, :class_name => "Point", dependent: :destroy

  def maxillary_depth_angle
    return 0
  end

end

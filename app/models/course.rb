class Course < ApplicationRecord
  validates :title, presence: :true

  belongs_to :teacher
  belongs_to :subject

  has_many :course_requirements
  has_many :requirements, through: :course_requirements

  accepts_nested_attributes_for :subject, reject_if: proc {|attr| attr["name"].blank? }
  accepts_nested_attributes_for :requirements
end

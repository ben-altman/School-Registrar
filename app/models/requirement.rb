class Requirement < ApplicationRecord
    has_many :course_requirements
    has_many :courses, through: :course_requirements
end

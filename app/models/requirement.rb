class Requirement < ApplicationRecord
    has_many :course_requirements
    has_many :requirements, through: :course_requirements
end

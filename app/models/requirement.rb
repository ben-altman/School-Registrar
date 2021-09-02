class Requirement < ApplicationRecord
    has_many :course_requirements
    has_many :courses, through: :course_requirements

    validates :name, presence: :true
    validates :name, uniqueness: :true

end

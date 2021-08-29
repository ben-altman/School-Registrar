class Subject < ApplicationRecord
    validates :name, presence: :true
    validates :name, uniqueness: :true
    
    has_many :courses
    has_many :teachers, through: :courses
end

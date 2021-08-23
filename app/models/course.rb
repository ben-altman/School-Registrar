class Course < ApplicationRecord
  validates :title, presence: :true

  belongs_to :teacher
  belongs_to :subject
end

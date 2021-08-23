class CreateCourseRequirements < ActiveRecord::Migration[6.1]
  def change
    create_table :course_requirements do |t|
      t.references :course, null: false, foreign_key: true
      t.references :requirement, null: false, foreign_key: true

      t.timestamps
    end
  end
end

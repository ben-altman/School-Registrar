School Registrar - teachers and course offerings

Teacher (user)
    has_many :courses
    has_many :subjects, through: :courses
    name
    email
    password_digest

Course (join table)
    belongs_to :teacher
    belongs_to :subject
    has_many :requirements
    name
    prerequisites


Subject
    has_many :courses
    has_many :teachers, through: :courses
    name


Requirements


school course offerings. The user is a teacher who can create courses. Courses belong to different subject areas, so teachers can have many subjects through courses and likewise subjects have many teachers. This allows me to find or create by name new subject areas. Teachers can only edit their own courses. Courses will be the join table, and they will have a name and other attributes like prerequisites or requirements like textbooks. The latter, requirements, can be a separate class, so that when creating a course I can have checkboxes for requirements like textbook, laptop, calculator, etc.
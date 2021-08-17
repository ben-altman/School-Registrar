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
    title
    classroom size (number of students)
    prerequisites


Subject
    has_many :courses
    has_many :teachers, through: :courses
    name


Requirements
    name

SCOPE METHODS:
    def self.ordered_by_price
    using SQL - order, such as: self.order(price: :desc)
    or: scope :published, -> { where(published: :true) }
        scope :ordered_by_price, -> { order(price: :desc) }
    CHAINABLE: model class methods lab, use SQL, so that we can call on Shoe class and user.shoes
        scope :cheap_shoes, -> { where('price < 100') }
    CAN CHAIN THE ABOVE: @shoes = Shoe.ordered_by_price.cheap_shoes

Nested routes
    nested new, nested index or show
    nested new: subjects/:id/courses/new
    nested index: teachers/:id/courses(index)
    nested index: subjects/:id/courses(index)


school course offerings. The user is a teacher who can create courses. Courses belong to different subject areas, so teachers can have many subjects through courses and likewise subjects have many teachers. This allows me to find or create by name new subject areas. Teachers can only edit their own courses. Courses will be the join table, and they will have a name and other attributes like prerequisites or requirements like textbooks. The latter, requirements, can be a separate class, so that when creating a course I can have checkboxes for requirements like textbook, laptop, calculator, etc.
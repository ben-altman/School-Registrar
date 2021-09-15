# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project # school-registrar is a rails app
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) # Teacher has_many courses, Course has_many Requirements, Subject has_many Courses
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) # Course belongs_to a Teacher
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) # Teacher has_many Subjects through Courses, while a Subject has_many Teachers through Courses
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients) # Teacher has_many Subjects through Courses, while a Subject has_many Teachers through Courses
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity) Course has a title, prerequisites, and maximum class size
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) # Teacher must have a unique name, email, and password_digest, Course must have a title, Subject must have a unique name
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) # Course #alpha and #by_subject, viewed in teacher show and course index
- [x] Include signup (how e.g. Devise) # password signup using bcrypt
- [x] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise) # logout button included in layouts
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) # google omniauth2
- [x] Include nested resource show or index (URL e.g. users/2/recipes) # /subject/:id/courses
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new) # create new course within a subject area
- [x] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [x] Views use partials if appropriate # Course uses _form for new and edit
module TeachersHelper

    def display_add_link
        if @teacher == current_user
            link_to "Add a new course", new_course_path
        end
    end
end

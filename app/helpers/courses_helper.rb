module CoursesHelper

    def display_links
        if @course.teacher == current_user
            edit_link
            delete_link
        end
    end

    def edit_link
        link_to "Edit Course", edit_course_path(@course)
    end

    def delete_link
        link_to "Delete Course", course_path(@course), method: :delete
    end
end

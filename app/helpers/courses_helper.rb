module CoursesHelper

    def edit_link
        if @course.teacher == current_user
            link_to "Edit Course", edit_course_path(@course)
        end
    end

    def delete_link
        if @course.teacher == current_user
            link_to "Delete Course", course_path(@course), method: :delete
        end
    end
end

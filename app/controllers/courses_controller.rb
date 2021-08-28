class CoursesController < ApplicationController

    def new
        @course = Course.new
    end
    
    def create
        byebug
        # @course = Course.new(course_params)
        # @course = current_user.courses.build(course_params())
        # if @course.save
        #     redirect_to course_path(@course)
        # else
        #     render :new
        # end
    end

    def delete

    end

    private

    def course_params
        params.require(:course).permit(
            :title,
            :size,
            :prerequisites,
            requirement_id: [],
            :subject_id,
            subject_attributes: [:name]
        )
    end
end
    
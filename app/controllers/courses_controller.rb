class CoursesController < ApplicationController

    def new
    end
    
    def create
        byebug
        @course = Course.new(course_params)

        if @course.save
            redirect_to course_path(@course)
        else
            render :new
        end
    end

    def delete

    end

    private

    def course_params

    end
end
    
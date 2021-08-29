class CoursesController < ApplicationController

    def new
        @course = Course.new
        # @course.subject.build
    end
    
    def create
        # byebug
        # @course = Course.new(course_params)
        @course = current_user.courses.build(course_params)
        if @course.save
            redirect_to course_path(@course)
        else
            render :new
        end
    end

    def index

    end

    def show
        @course = Course.find(params[:id])
    end

    def delete

    end

    private

    def course_params
        params.require(:course).permit(
            :title,
            :size,
            :prerequisites,
            requirement_ids: [],
            requirements_attributes: [:name],
            :subject_id => [],
            subject_attributes: [:name]
        )
    end
end
    
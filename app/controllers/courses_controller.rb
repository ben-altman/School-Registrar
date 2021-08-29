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
        @courses = Course.all
    end

    def show
        @course = Course.find(params[:id])
    end

    def edit
        @course = Course.find(params[:id])
    end

    def update

    end

    def delete
        @course = course.find(params[:id])
        @course.destroy
        redirect_to courses_path
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
    
class CoursesController < ApplicationController

    def new
        if params[:subject_id] && subject = Subject.find_by_id(params[:subject_id])
            @course = subject.courses.build
        else    
            @course = Course.new
        end
    end
    
    def create
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
    # byebug
        @course = Course.find(params[:id])
        if @course.update(course_params)
            redirect_to course_path(@course)
        else
            render :edit
        end
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
            new_requirement_attributes: [:name],
            :subject_id => [],
            subject_attributes: [:name]
        )
    end
end
    
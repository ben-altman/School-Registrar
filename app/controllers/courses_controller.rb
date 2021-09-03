class CoursesController < ApplicationController
    before_action :check_if_logged_in

    def new
        # is the route nested and legitimate?
        if params[:subject_id] && subject = Subject.find_by_id(params[:subject_id])
            @course = subject.courses.build
        else    
            @course = Course.new
            @course.build_subject
        end
    end
    
    def create
        # byebug
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
        if Course.find_by(id: params[:id])
            @course = Course.find(params[:id])
        else 
            redirect_to subjects_path
        end
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

    def destroy
        @course = Course.find(params[:id])
        @course.destroy
        redirect_to subjects_path
    end

    private

    def course_params
        params.require(:course).permit(
            :title,
            :size,
            :prerequisites,
            :subject_id,
            requirement_ids: [],
            new_requirement_attributes: [:name],
            subject_attributes: [:name]
        )
    end
end
    
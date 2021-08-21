class SessionsController < ApplicationController
    
    def welcome
    end

    # show login form
    def new
        @teacher = Teacher.new
    end

    #log in, create session
    def create
        # raise.params
        @teacher = Teacher.find_by_name(params[:teacher][:name])
    # byebug
        if @teacher.try(:authenticate, params[:teacher][:password])
            session[:teacher_id] = @teacher.id
            redirect_to teacher_path(@teacher)
        else
            flash[:error] = 'Incorrect username or password'
            redirect_to 'login'
        end
    end

    def destroy
        session.clear
        redirect_to root_path
    end

    private



end
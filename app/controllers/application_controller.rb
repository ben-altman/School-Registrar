class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?

    def logged_in?
        !!session[:teacher_id]
    end

    def current_user
        @teacher = Teacher.find_by(id: session[:teacher_id])
    end

    def check_if_logged_in
        flash.alert = "You must be logged in."
        redirect_to root_path if !logged_in?
    end
end

class ApplicationController < ActionController::Base
    helper_method :current_user, logged_in?

    def logged_in?
        !!session[:teacher_id]
    end

    def current_user
        @teacher = Teacher.find_by(id: session[:teacher_id])
    end
end

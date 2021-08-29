class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
        @teacher = Teacher.find_by(id: session[:teacher_id])
    end
end

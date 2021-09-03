class StaticController < ApplicationController

    def welcome
    end

    def home
        check_if_logged_in
        @teacher = current_user
    end

end
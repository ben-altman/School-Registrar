class StaticController < ApplicationController

    def welcome
    end

    def home
        @teacher = current_user
    end

end
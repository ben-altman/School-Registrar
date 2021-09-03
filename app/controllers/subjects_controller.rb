class SubjectsController < ApplicationController
    before_action :check_if_logged_in

    def index
        @subjects = Subject.all
    end

    def show
        @subject = Subject.find(params[:id]) 
    end
end

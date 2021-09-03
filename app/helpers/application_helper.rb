module ApplicationHelper

    def display_nav_bar
        if logged_in?
            render partial: 'layouts/navbar_links'
        end
    end
end

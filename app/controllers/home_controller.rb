class HomeController < ApplicationController
    def index
        if current_user
            redirect_to books_path
        else 
            redirect_to new_user_session_path
        end
    end
end

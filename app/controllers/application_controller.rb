class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session

    def is_admin?
        redirect_to root_path unless current_user.is_admin
    end
end

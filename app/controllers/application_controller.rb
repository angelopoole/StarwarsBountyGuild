class ApplicationController < ActionController::Base
    before_action :current_hunter

    private
    
    def current_hunter
        @logged_in_hunter = Hunter.find_by(id: session[:hunter_id])
    end
end

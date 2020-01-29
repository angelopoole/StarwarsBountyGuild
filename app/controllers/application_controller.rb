class ApplicationController < ActionController::Base
    before_action :current_hunter
    before_action :authorize

    private
    
    def current_hunter
        @logged_in_hunter = Hunter.find_by(id: session[:hunter_id])
    end

    def authorize
        if @logged_in_hunter
            #proceeds as normal
        else
            flash[:error] = ["Access Denied. Login to proceed."]

            redirect_to login_path
        end
    end
end


# There is an issue here when hosting to a website here where hunter_id is notdefined as a relation
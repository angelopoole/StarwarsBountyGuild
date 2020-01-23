class HuntersController < ApplicationController
    before_action :find_hunter, only: [:show, :edit, :update, :destroy]

    def new
    @hunter = Hunter.new
    end

    def create
    @hunter = Hunter.create(hunter_params)
    if @hunter.is_valid?
        session[:hunter_id] = @hunter.id
        redirect_to hunter_path(@hunter.id)
    else
        flash[:errors] = @hunter.errors.full_messages
        redirect_to new_hunter_path
    end
    end

    def login

    end

    def create_login_session
        hunter = Hunter.find_by(name: params[:session][:name])
        if hunter && hunter.authenticate(params[:session][:password])
            session[:hunter_id] = hunter.id
            redirect_to hunter_path(hunter.id)
        else
            flash[:errors] = ["That login information is not correct"]
            redirect_to login_path
        end
    end

    def logout

    end
    
    def edit
    end

    def show
    end

    def update
        @hunter.update(hunter_params)
        redirect_to hunter_path(@hunter)
    end

    def destroy
        find_hunter.destroy
        redirect_to new_hunter_path
    end

    private

    def find_hunter
    @hunter = Hunter.find(params[:id])
    end

    def hunter_params
        params.require(:hunter).permit(:name, :planet, :species, :quote, :password)
    end

end

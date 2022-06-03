class Api::V1::UsersController <ApplicationController 
    skip_before_action :verify_authenticity_token
    def show 

    end

    def create
        user = User.find_or_create_by(name: params[:name], email: params[:email])
    end
end
class Api::V1::UsersController <ApplicationController 
    def show 

    end

    def create
        user = User.find_create_by(params[:email])
    end
end
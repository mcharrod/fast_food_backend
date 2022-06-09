class Api::V1::UsersController <ApplicationController
    skip_before_action :verify_authenticity_token
    def show
        user = User.find_by(email: params[:email])
        render json: UserSerializer.new(user)
    end

    def create
        user = User.find_or_create_by!(name: params[:name], email: params[:email])
        render json: UserSerializer.new(user)
    end

    def update
        begin 
            render json: UserSerializer.new(User.update(params[:id], user_params))
        rescue ActiveRecord::RecordNotFound
            render json: {text: "Could not find user"}, status: 400
        end
    end

    def destroy
        User.delete(params[:id])
    end

    private
    def user_params
        params.permit(:name, :email)
    end
end

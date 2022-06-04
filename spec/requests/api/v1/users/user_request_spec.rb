require 'rails_helper'

RSpec.describe "User CRUD funtionality" do 
    it "can retrieve a specific user " do 
        create_list(:user, 10)
        create(:user, email: "rod@gmail.com")
        get '/api/v1/user?email=rod@gmail.com'
        expect(response).to be_successful
        user = JSON.parse(response.body, symbolize_names: true)
        # binding.pry
        expect(user).to be_a(Hash)
        expect(user[:data][:attributes]).to be_a(Hash)
        expect(user[:data][:attributes][:email]).to eq("rod@gmail.com")
    end 

    it "can create or find a user by a post call" do 
        create_list(:user, 10)
        post '/api/v1/users?email=beth@gmail.com'
        expect(User.count).to eq(11)
        expect(response).to be_successful
        user = JSON.parse(response.body, symbolize_names: true)
        expect(user[:data][:attributes][:email]).to eq("beth@gmail.com")
    end
end
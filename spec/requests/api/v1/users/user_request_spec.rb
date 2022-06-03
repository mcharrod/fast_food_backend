require 'rails_helper'

RSpec.describe "User CRUD funtionality" do 
    it "can retrieve a specific user " do 
        create_list(:user, 10)
        create(:user, email: "rod@gmail.com")
        get '/api/v1/user?email=rod@gmail.com'
    end 
end
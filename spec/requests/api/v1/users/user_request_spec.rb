require "rails_helper"

RSpec.describe "User CRUD funtionality" do
  it "can generate data for all users" do
    create_list(:user, 10)
    get "/api/v1/users"
    response_body = JSON.parse(response.body, symbolize_names: true)
    users = response_body[:data]

    expect(response).to be_successful

    expect(users).to be_an Array
    expect(users.count).to eq(10)

    users.each do |user|
      expect(user).to have_key(:id)
      expect(user[:type]).to eq("user")
      expect(user[:attributes]).to have_key(:name)
      expect(user[:attributes]).to have_key(:email)
    end
  end

  it "can retrieve a specific user " do
    create_list(:user, 10)
    create(:user, email: "rod@gmail.com")
    get "/api/v1/user?email=rod@gmail.com"
    expect(response).to be_successful
    user = JSON.parse(response.body, symbolize_names: true)
    expect(user).to be_a(Hash)
    expect(user[:data][:attributes]).to be_a(Hash)
    expect(user[:data][:attributes][:email]).to eq("rod@gmail.com")
  end

  it "can create or find a user by a post call" do
    create_list(:user, 10)
    post "/api/v1/users?email=beth@gmail.com"
    expect(User.count).to eq(11)
    expect(response).to be_successful
    user = JSON.parse(response.body, symbolize_names: true)
    expect(user[:data][:attributes][:email]).to eq("beth@gmail.com")
  end
  it "can edit a users info " do
    create_list(:user, 10)
    john = create(:user, name: "John")
    patch "/api/v1/users/#{john.id}?name=Sue"
    sue = JSON.parse(response.body, symbolize_names: true)
    expect(sue[:data][:attributes][:name]).to eq("Sue")
    expect(john.id.to_s).to eq(sue[:data][:id])
  end
  it "can remove a user" do
    create_list(:user, 10)
    user = create(:user, name: "will")
    delete "/api/v1/users/#{user.id}"
    expect(User.count).to eq(10)
    expect(User.ids).not_to include(user.id)
  end
end

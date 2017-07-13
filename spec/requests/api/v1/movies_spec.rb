require 'rails_helper'

RSpec.describe "Movies", type: :request do
  describe "GET /movies" do
    before(:each) do
      @user = FactoryGirl.create(:user,email:"honestraj.it@gmail.com",password:"12345678")
      (1..10).to_a.each{|i| FactoryGirl.create(:movie,title:"Movie#{i}",description:"Description#{i}",movie_length:"2 hours",director:"Shan Rolden",rating:"Something",user:@user)}
    end

    it "check all movie list /api/v1/movies" do
      get '/api/v1/movies'
      # test for the 200 status-code
      expect(response).to be_success
     #check the count
      expect(json.count).to eq(10)
    end

    it "check particular movie list /api/v1/movies" do
      get '/api/v1/movies/1'
      # test for the 200 status-code
      expect(response).to be_success
      #check to make sure the right amount of messages are returned
      expect(json['title']).to eq("Movie1")
      expect(json['id']).to eq(1)
    end

  end
end

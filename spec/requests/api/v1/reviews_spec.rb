require 'rails_helper'

RSpec.describe "Reviews", type: :request do
  describe "GET api/v1/movies/1/reviews" do
    before(:each) do
      @user = FactoryGirl.create(:user,email:"honestraj.it@gmail.com",password:"12345678")
      (1..10).to_a.each do |i|
        FactoryGirl.create(:movie,title:"Movie#{i}",description:"Description#{i}",movie_length:"2 hours",director:"Shan Rolden",rating:"Something",user:@user)
      end
      (1..10).to_a.each do |i|
        FactoryGirl.create(:review,rating:"4",comment:"comment #{i}",user_id:1,movie_id:1)
      end
    end

    it "check all movie list all reviews /api/v1/movies/1/reviews" do
      get '/api/v1/movies/1/reviews'
      #test for the 200 status-code
      expect(response).to be_success
      #check the count
      expect(json.count).to eq(10)
    end

    it "check particular movie list particular review /api/v1/movies/reviews/1" do
      get '/api/v1/movies/1/reviews/1'
      # test for the 200 status-code
      expect(response).to be_success
      #check comment and id
      expect(json['comment']).to eq("comment 1")
      expect(json['id']).to eq(1)
    end

    it "check particular movie all review  /api/v1/movies/1/reviews/average" do
      get '/api/v1/movies/1/reviews/average'
      # test for the 200 status-code
      expect(response).to be_success
      #check tmovie and average
      expect(json['Movie1']).to eq(4)
    end
  end
end

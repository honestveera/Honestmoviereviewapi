require 'rails_helper'

RSpec.describe Review, type: :model do
  before(:each) do
    @user = FactoryGirl.create(:user,email:"honestraj.it@gmail.com",password:"12345678")
    @movie = FactoryGirl.create(:movie,title:"Movie",description:"Description",movie_length:"2 hours",director:"Shan Rolden",rating:"Something",user:@user)
  end
  it "is valid with valid attributes" do
    expect(FactoryGirl.create(:review,rating:5,comment:"comment1",user: @user,movie: @movie)).to be_valid
  end
  it "is not valid without a rating" do
    expect(FactoryGirl.build(:review,rating:"",comment:"comment1",user: @user,movie: @movie)).to_not be_valid
  end
  it "is not valid without a user_id" do
    expect(FactoryGirl.build(:review,rating:5,comment:"comment1",user_id:"",movie: @movie)).to_not be_valid
  end
  it "is not valid without a movie_id" do
    expect(FactoryGirl.build(:review,rating:5,comment:"comment1",user: @user,movie_id:"")).to_not be_valid
  end
end

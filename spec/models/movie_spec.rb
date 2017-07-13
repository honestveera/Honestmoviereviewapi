require 'rails_helper'

RSpec.describe Movie, type: :model do

   before(:each) do
    @user = FactoryGirl.create(:user,email:"honestraj.it@gmail.com",password:"12345678")
   end

   it "is valid with valid attributes" do
    expect(FactoryGirl.build(:movie,title:"Movie",description:"Description",movie_length:"2 hours",director:"Shan Rolden",rating:"Something",user:@user)).to be_valid
   end

   it "is not valid without a user_id" do
    expect(FactoryGirl.build(:movie,title:"Movie",description:"Description",movie_length:"2 hours",director:"Shan Rolden",rating:"Something",user:nil)).to_not be_valid
   end
   it "is not valid without a title" do
    expect(FactoryGirl.build(:movie,title:"",description:"Description",movie_length:"2 hours",director:"Shan Rolden",rating:"Something",user:@user)).to_not be_valid
   end
end

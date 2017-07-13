require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      :rating => 1,
      :comment => "MyText",
      :user => nil,
      :movie => nil
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input#review_rating[name=?]", "review[rating]"

      assert_select "textarea#review_comment[name=?]", "review[comment]"

      assert_select "input#review_user_id[name=?]", "review[user_id]"

      assert_select "input#review_movie_id[name=?]", "review[movie_id]"
    end
  end
end

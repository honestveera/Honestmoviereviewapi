require 'rails_helper'

RSpec.describe "movies/edit", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      :title => "MyString",
      :description => "MyText",
      :movie_length => "MyString",
      :director => "MyString",
      :rating => "MyString",
      :user => nil
    ))
  end

  it "renders the edit movie form" do
    render

    assert_select "form[action=?][method=?]", movie_path(@movie), "post" do

      assert_select "input#movie_title[name=?]", "movie[title]"

      assert_select "textarea#movie_description[name=?]", "movie[description]"

      assert_select "input#movie_movie_length[name=?]", "movie[movie_length]"

      assert_select "input#movie_director[name=?]", "movie[director]"

      assert_select "input#movie_rating[name=?]", "movie[rating]"

      assert_select "input#movie_user_id[name=?]", "movie[user_id]"
    end
  end
end

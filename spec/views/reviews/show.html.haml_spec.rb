require 'rails_helper'

RSpec.describe "reviews/show", type: :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :rating => 2,
      :comment => "MyText",
      :user => nil,
      :movie => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

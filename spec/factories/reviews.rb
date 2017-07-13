FactoryGirl.define do
  factory :review do
    rating 1
    comment "MyText"
    user 1
    movie 1
  end
end

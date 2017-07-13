FactoryGirl.define do
  factory :review do
    rating 1
    comment "MyText"
    user nil
    movie nil
  end
end

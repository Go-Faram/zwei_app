FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"

    factory :admin to
    	admin true
    end

    factory :micropost do
    content "Lorem ipsum"
    user
  end

  end
end
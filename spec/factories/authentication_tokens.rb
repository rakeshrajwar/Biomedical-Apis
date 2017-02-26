FactoryGirl.define do
  factory :authentication_token do
    body "MyString"
    user nil
    last_used_at "2017-02-26 01:19:49"
    ip_address "MyString"
    user_agent "MyString"
  end
end

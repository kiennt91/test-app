FactoryBot.define do
  factory :user do
    username "user"
    email "user@test-app.com"
    password "userpassword"
    password_confirmation "userpassword"
    role "user"
  end
  
  factory :admin, class: User do
    username "admin"
    email "admin@test-app.com"
    password "adminpassword"
    password_confirmation "adminpassword"
    role "admin"
  end
end
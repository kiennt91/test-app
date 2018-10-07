FactoryBot.define do
  sequence :name do |n|
    "Category#{n}"
  end

  factory :category do
    name
  end
end
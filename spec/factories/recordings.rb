FactoryBot.define do
  factory :recording do
    sequence(:id) { |n| n + Time.now.to_i }
  end
end

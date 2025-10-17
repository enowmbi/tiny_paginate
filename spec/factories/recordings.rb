FactoryBot.define do
  factory :recording do
    sequence(:id) { |n| n + Time.current.to_i }
  end
end

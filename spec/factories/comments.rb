FactoryBot.define do
  factory :comment do
    association :user
    association :article
    name { 'Comment' }
  end
end

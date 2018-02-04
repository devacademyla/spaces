FactoryBot.define do
  factory :maintenance do
    registration_date FFaker::Time.date
    status true
  end
end

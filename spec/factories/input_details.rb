FactoryBot.define do
  factory :input_detail do
    input_date FFaker::Time.date
    quantity FFaker::PhoneNumberAU.home_work_phone_prefix
  end
end

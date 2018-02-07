FactoryBot.define do
  factory :output_detail do
    output_date FFaker::Time.date
    quantity FFaker::PhoneNumberAU.home_work_phone_prefix
  end
end

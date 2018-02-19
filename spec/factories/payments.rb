FactoryBot.define do
  factory :payment do
    payment_date FFaker::IdentificationESCO.expedition_date
    due_date FFaker::IdentificationESCO.expedition_date
    amount FFaker::PhoneNumberAU.home_work_phone_prefix
    status 'Completo'
    note FFaker::Book.description
  end
end

FactoryBot.define do
  factory :payment do
    payment FFaker::PhoneNumberAU.home_work_phone_prefix
    payment_date FFaker::IdentificationESCO.expedition_date
    warning_date FFaker::IdentificationESCO.expedition_date
    quantity FFaker::PhoneNumberAU.home_work_phone_prefix
    status 'Completo'
    note FFaker::Book.description
  end
end

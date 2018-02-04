FactoryBot.define do
  factory :supplier do
    name FFaker::Name.html_safe_name
    phone FFaker::PhoneNumberAU.international_home_work_phone_number
    supplier_identity FFaker::Identification.ssn
    ranking FFaker::PhoneNumberAU.mobile_phone_prefix
    services FFaker::Skill.specialties
    category FFaker::Skill.specialty
    address FFaker::Address.street_address
    bank FFaker::BaconIpsum.word
    current_account FFaker::PhoneNumber.imei
    email FFaker::Internet.email
    cci FFaker::PhoneNumber.imei
    deductions_account FFaker::PhoneNumber.imei
  end
end

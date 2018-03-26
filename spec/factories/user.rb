# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name FFaker::Name.first_name
    last_name FFaker::Name.last_name
    email FFaker::Internet.email
    mobile_phone FFaker::PhoneNumberAU.international_mobile_phone_number
    birthday FFaker::Time.date
    role 'admin'
    user_identifier FFaker::Identification.ssn
    address FFaker::Address.street_address
    password FFaker::Internet.password
  end
end

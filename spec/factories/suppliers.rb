# frozen_string_literal: true

FactoryBot.define do
  factory :supplier do
    name FFaker::Name.html_safe_name
    supplier_identity FFaker::Identification.ssn
    email FFaker::Internet.email
    category FFaker::Skill.specialty
    description FFaker::Book.description
    payment_details FFaker::Book.description
    phone FFaker::PhoneNumber.phone_number
    address FFaker::Address.street_address
  end
end

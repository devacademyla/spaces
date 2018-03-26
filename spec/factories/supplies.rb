# frozen_string_literal: true

FactoryBot.define do
  factory :supply do
    name FFaker::Product.product_name
    description FFaker::Book.description
    brand FFaker::Product.brand
    color FFaker::Vehicle.base_color
    category FFaker::IdentificationESCO.driver_license_category
    sub_category FFaker::IdentificationESCO.driver_license_category
    status FFaker::PhoneNumberAU.mobile_phone_prefix
    stock FFaker::PhoneNumberAU.home_work_phone_prefix
    stock_minimun FFaker::PhoneNumberAU.home_work_phone_prefix
    stock_reposition FFaker::PhoneNumberAU.home_work_phone_prefix
    note FFaker::Book.description
  end
end

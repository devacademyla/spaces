# frozen_string_literal: true

FactoryBot.define do
  factory :asset do
    name FFaker::Product.product_name
    brand FFaker::Product.brand
    model FFaker::Product.model
    color FFaker::Vehicle.base_color
    category FFaker::IdentificationESCO.driver_license_category
    sub_category FFaker::IdentificationESCO.driver_license_category
    status FFaker::PhoneNumberAU.mobile_phone_prefix
    description FFaker::Book.description
    interval FFaker::Vehicle.engine_cylinders
  end
end

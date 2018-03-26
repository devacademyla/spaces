# frozen_string_literal: true

FactoryBot.define do
  factory :space do
    space_identifier FFaker::IdentificationESCL.rut
    name FFaker::NatoAlphabet.code
    category FFaker::IdentificationESCO.driver_license_category
    capacity FFaker::Vehicle.engine_cylinders
    area FFaker::Vehicle.engine_displacement
  end
end

FactoryBot.define do
  factory :space do
    code FFaker::IdentificationESCL.rut
    name FFaker::NatoAlphabet.code
    category FFaker::IdentificationESCO.driver_license_category
    capacity FFaker::Vehicle.engine_cylinders
    area FFaker::Vehicle.engine_displacement
  end
end

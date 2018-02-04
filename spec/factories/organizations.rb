FactoryBot.define do
  factory :organization do
    name FFaker::Name.first_name
    description FFaker::Book.description
    organization_identifier FFaker::Identification.ssn
    website FFaker::InternetSE.http_url
  end
end

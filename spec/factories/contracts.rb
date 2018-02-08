FactoryBot.define do
  factory :contract do
    start_date FFaker::IdentificationESCO.expedition_date
    finish_date FFaker::IdentificationESCO.expedition_date
  end
end

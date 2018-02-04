FactoryBot.define do
  factory :user_space do
    start_date FFaker::IdentificationESCO.expedition_date
    finish_date FFaker::IdentificationESCO.expedition_date
  end
end

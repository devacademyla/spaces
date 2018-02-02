
FactoryBot.define do
  factory :user do
    first_name 'Example User'
    last_name 'user@example.com'
    email 'xxxx@email.com'
    mobile_phone 959_885_486
    birthday { 1997 - 0o7 - 0o2 }
    role 'admin'
    dni 70_359_568
    address	'Av. los nose quien y los no se cuanto'
  end
end

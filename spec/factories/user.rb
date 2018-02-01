
FactoryBot.define do
  factory :user do
    first_name 'Example User'
    last_name 'user@example.com'
    email	'xxxx@email.com'
    mobile_phone	959885486
    birthday	{1997-07-02}
    role	'admin'
    dni	70359568
    address	'Av. los nose quien y los no se cuanto'
  end
end

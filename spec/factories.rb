FactoryBot.define do

  factory :User do
    username "Espe"
    password 1 # integer value
    email "lalala"
  end
# Add other factories in here
  factory :Message do
    user_id 1
    date Date.today # integer value
    content "lalala"
  end
end
FactoryBot.define do
  factory :user, :class => 'User' do
    email 'examle@example.com'
    first_name "John"
    last_name  "Doe"
    password 'test'
    password_confirmation 'test'
  end
end

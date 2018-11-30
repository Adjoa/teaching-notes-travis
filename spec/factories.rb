require "ffaker"

FactoryBot.define do
  factory :user do
    email { "test@example.com" }
    password { "f4k3p455w0rd" }
    
    
    factory :sample_user do
      email { FFaker::Internet.email }
      password { "password" }
    end
  end
end
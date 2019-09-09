# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'ihor3@gmail.com' }
    password { '123456' }
  end
end

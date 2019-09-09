# frozen_string_literal: true

# require 'rails_helper'
# require 'rspec_api_documentation/dsl'

# resource 'Users' do
#   header 'Accept', 'application/json'
#   header 'Content-Type', 'application/json'
#   explanation 'Users are top-level business objects'

#   get '/users' do
#     route_summary 'This URL gets the list of users.'
#     route_description 'Getting list of users. Long Description'

#     context '200' do
#       example_request 'Getting list of users' do
#         expect(status).to eq(200)
#         # do_request(param)
#       end
#     end
#   end

#   post '/users' do
#     route_summary 'This is used to create users.'

#     with_options scope: :user, with_example: true do
#       parameter :email, 'ihor1@gmail.com', required: true
#       parameter parameter :password, '123456'
#     end

#     with_options scope: :order do
#       response_field :first_name, 'First Name', type: :string
#       response_field :password, 'password'
#     end

#     context '200' do
#       let(:email) { 'ihor1@gmail.com' }
#       let(:password) { '123456' }
#       let(:password_confirmation) { '123456' }
#       let(:raw_post) { params.to_json }

#       example 'Create a user' do
#         do_request(params)
#         expect(status).to eq(201)
#       end
#     end
#   end
# end

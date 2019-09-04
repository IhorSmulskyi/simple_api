require 'rails_helper'
require 'pry'

describe ProductsController do

  let!(:product) {Product.create( name: "OLD_LAMP")}
  let(:id) {product.id}
  # describe 'before authenticate' do

  #   describe 'POST #create' do
  #     before {post :create}
  #     it 'Unauthorized' do
  #       expect(response.status).to eq 401
  #     end
  #   end

    # describe 'PUT #update' do
    #   before {put :update, params: { name: 'tel' } }
    #   it 'Unauthorized' do
    #     expect(response.s)
  # describe 'before authenticate' do

  #   describe 'POST #create' do
  #     before {post :create}
  #     it 'Unauthorized' do
  #       expect(response.status).to eq 401
  #     end
  #   end

    # describe 'PUT #update' do
    #   before {put :update, params: { name: 'tel' } }
    #   it 'Unauthorized' do
    #     expect(response.status).to eq 401
    #   end
    # end

    # describe 'DELETE #destroy' do
    #   before {delete :destroy }
    #   it 'Unauthorized' do
    #     expect(response.status).to eq 401
    #   end
    # end

  # end

  describe 'authenticate user' do

 before{ get '/products', params: {}, headers: { 'HTTP_ACCEPT' => "application/json",  "Authorization": 'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1Njc1MTQ0NTF9.C3kSGdX9NEaDpSIPyRO0uWTpTXx193LjtwOV9sBicKI' }}
    describe 'GET #index' do
      before{ get :index}
      it 'show products' do
        expect(response.status).to eq 200
        expect(Product.count).to eq 1
      end
    end

    describe 'GET #product' do
      before { get :show, params: { id: id } }
      it 'show one product' do
        expect(response.status).to eq 200
        expect(Product.count).to eq 1
      end
    end

    describe 'POST #create' do
      it 'create product' do
        params = {name: 'LAMP'}
        post :create, params: { format: 'json', id: '4', product: params}
        expect(response.status).to eq 201
        expect(Product.count).to eq 2
      end
    end

    describe 'PUT #update' do
      it 'updute product' do
        params = {name: 'new_LAMP'}
        put :update, params: { format: 'json', id: id , product: params}
        product.reload
        expect(response.status).to eq 200
      end
    end

    describe 'DELETE #destroy' do
      before {delete :destroy, params: {id: id} }
      it 'destroy product' do
        expect(response.status).to eq 204
        expect(Product.count).to eq 0
      end
    end

  end
end

# rspec ./spec/models/requests/categories_spec.rb
require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  let!(:current_user) { User.create(name: 'Akai', email: 'akai123@gmail.com', password: '123456') }

  describe 'GET /categories' do
    before do
      current_user.confirm
      sign_in current_user
    end

    it 'returns http success' do
      get '/categories'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /categories/new' do
    before do
      current_user.confirm
      sign_in current_user
    end

    it 'returns http success' do
      get '/categories/new'
      expect(response).to have_http_status(:success)
    end
  end
end

# rspec ./spec/models/requests/expenses_spec.rb
require 'rails_helper'

RSpec.describe 'Expenses', type: :request do
  let!(:user) { User.create(name: 'Akai', email: 'akai123@gmail.com', password: '123456') }
  let(:icon) do
    'https://play-lh.googleusercontent.com/7UppiZcZTNBInAJzU-XG8EpGeU3BlLVJM9LoJTaWiVamvguplwUFMNUg_92lk-0z4g'
  end
  let!(:luz) do
    Category.create(name: 'luz', icon:, user_id: user.id)
  end

  describe 'GET /categories/:id/expenses' do
    before do
      user.confirm
      sign_in user
    end

    it 'returns http success' do
      get category_expenses_path(luz.id)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /categories/:id/expenses/new' do
    before do
      user.confirm
      sign_in user
    end

    it 'returns http success' do
      get new_category_expense_path(luz.id)
      expect(response).to have_http_status(:success)
    end
  end
end

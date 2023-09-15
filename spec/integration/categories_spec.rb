# rspec spec/integration/categories_spec.rb
require 'rails_helper'

RSpec.feature 'Categories', type: :feature do
  let!(:user) do
    User.create(name: 'Jose', email: 'edahigure@hotmail.com', role: 'user', password: 'qweqwe')
  end

  let(:icon) do
    'https://play-lh.googleusercontent.com/7UppiZcZTNBInAJzU-XG8EpGe\
    U3BlLVJM9LoJTaWiVamvguplwUFMNUg_92lk-0z4g'
  end

  let!(:luz) do
    Category.create(name: 'luz', icon:, user_id: user.id)
  end

  let!(:expense1) do
    Expense.create(name: 'pago mensual', amount: 334.25, user_id: user.id)
  end

  let!(:expense_category1) do
    ExpenseCategory.create(expense_id: expense1.id, category_id: luz.id)
  end

  describe 'new payment page' do
    it 'shows the right content' do
      user.confirm
      sign_in user
      visit root_path
      click_on 'LOG IN'
      expect(page).to have_content('luz')
      click_on 'luz'
      expect(page).to have_content('Total payment: 334.25')
      click_on 'New payment'
      expect(page).to have_content('New payment')
    end
  end
end

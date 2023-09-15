# rspec spec/integration/categories_spec.rb
require 'rails_helper'

RSpec.feature 'My Feature categories', type: :feature do

  let!(:user) do
    User.create(name: 'Jose', email: 'edahigure@hotmail.com', role: 'user', password: 'qweqwe')
  end

  let(:icon) do 
    "https://play-lh.googleusercontent.com/7UppiZcZTNBInAJzU-XG8EpGeU3BlLVJM9LoJTaWiVamvguplwUFMNUg_92lk-0z4g"
  end

  let!(:luz) do     
    Category.create(name: "luz", icon: icon, user_id: user.id)
  end

  let!(:expense1) do 
    Expense.create(name: "pago mensual", amount: 334.25,  user_id: user.id )
  end

  let!(:expense_category1) do
    ExpenseCategory.create( expense_id: expense1.id, category_id: luz.id )
  end

  before :each do
    user.confirm
    sign_in user
  end

  describe 'categories page' do
    it 'shows the right content' do
      visit root_path
      click_on 'LOG IN'
      expect(page).to have_content('luz')
    end
  end

  describe 'category detail page' do
    it 'shows the right content' do
      visit root_path
      click_on 'LOG IN'
      click_on 'luz'
      expect(page).to have_content('Total payment: 334.25')
    end
  end

  describe 'new payment page' do
    it 'shows the right content' do
      visit root_path
      click_on 'LOG IN'
      click_on 'luz'
      click_on 'New payment'
      expect(page).to have_content('New payment')
    end
  end


end


# rspec ./spec/models/category_expense_spec.rb

require 'rails_helper'


RSpec.describe Category, type: :model do
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

  describe 'checking atributes and validity' do
    it 'should be a valid category expense' do
      expect(expense_category1).to be_valid
    end
  end
end
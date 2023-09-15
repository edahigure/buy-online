# rspec ./spec/models/expense_spec.rb

require 'rails_helper'

RSpec.describe Category, type: :model do
  let!(:user) do
    User.create(name: 'Jose', email: 'edahigure@hotmail.com', role: 'user', password: 'qweqwe')
  end

  let!(:expense1) do 
    Expense.create(name: "pago mensual", amount: 334.25,  user_id: user.id )
  end

  describe 'checking atributes and validity' do
    it 'should be present name ' do
      expect(expense1).to be_valid
    end

    it 'should not be valid ' do
      expense1.name=nil
      expense1.save
      expect(expense1).not_to be_valid
    end

    it 'should not be valid ' do
      expense1.amount=nil
      expense1.save
      expect(expense1).not_to be_valid
    end


    it 'should give the correct name' do
      expect(expense1.name).to eq('pago mensual')
    end

    it 'should give the correct amount' do
      expect(expense1.amount.to_f).to eq('334.25'.to_f)
    end

  
  end
end
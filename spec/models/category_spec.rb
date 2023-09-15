# rspec ./spec/models/category_spec.rb

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

  describe 'checking atributes and validity' do
    it 'should be a valid category ' do
      expect(luz).to be_valid
    end

    it 'should not be a valid category ' do
      luz.name=nil
      luz.save
      expect(luz).not_to be_valid
    end

    it 'should not be a valid category ' do
      luz.icon=nil
      luz.save
      expect(luz).not_to be_valid
    end

    it 'should give the correct category name' do
      expect(luz.name).to eq('luz')
    end

    it 'should have the correct url image address' do
      expect(luz.icon).to eq("https://play-lh.googleusercontent.com/7UppiZcZTNBInAJzU-XG8EpGeU3BlLVJM9LoJTaWiVamvguplwUFMNUg_92lk-0z4g")
    end
  end
end
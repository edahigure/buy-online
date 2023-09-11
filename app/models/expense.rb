class Expense < ApplicationRecord
  belongs_to :user
  has_many :expense_categories
  has_many :categories, through: :expense_categories
end

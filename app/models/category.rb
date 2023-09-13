class Category < ApplicationRecord
  belongs_to :user
  has_many :expense_categories, dependent: :destroy
  has_many :expenses, through: :expense_categories, dependent: :destroy

  def total_amount
    expenses.sum { |expense| expense.amount  }
  end

  def recent_payments
    expenses.order(created_at: :desc)
  end
end

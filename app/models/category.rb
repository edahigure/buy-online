class Category < ApplicationRecord
  belongs_to :user
  has_many :expense_categories, dependent: :destroy
  has_many :expenses, through: :expense_categories, dependent: :destroy

  validates :name, presence: true
  validates :icon, presence: true

  def total_amount
    expenses.sum(&:amount)
  end

  def recent_payments
    expenses.order(created_at: :desc)
  end
end

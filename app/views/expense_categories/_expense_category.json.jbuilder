json.extract! expense_category, :id, :amount, :expense_id, :category_id, :created_at, :updated_at
json.url expense_category_url(expense_category, format: :json)

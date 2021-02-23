json.extract! product, :id, :name, :address, :price, :description, :company_name, :available_date, :telephone_number, :user_id, :created_at, :updated_at
json.url product_url(product, format: :json)

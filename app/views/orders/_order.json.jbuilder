json.extract! order, :id, :order_ID, :menu_ID, :table_ID, :login_ID, :total, :total_tax_not, :status, :created_at, :updated_at
json.url order_url(order, format: :json)

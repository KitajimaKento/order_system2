json.extract! order_select, :id, :order_ID, :menu_ID, :created_at, :updated_at
json.url order_select_url(order_select, format: :json)

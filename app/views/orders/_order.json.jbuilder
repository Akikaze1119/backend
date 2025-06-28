json.extract! order, :id, :progress, :description, :estimated_finish_date, :status, :client_name, :client_email, :created_at, :updated_at
json.url order_url(order, format: :json)

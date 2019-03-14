json.extract! payment, :id, :tab_id, :paying_user_id, :submitting_user_id, :payment_amount, :created_at, :updated_at
json.url payment_url(payment, format: :json)

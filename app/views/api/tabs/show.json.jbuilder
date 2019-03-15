# json.tab @tab
#
# json.other_user @tab.other_user(current_user)
# json.payments @tab.payments

json.key_format!
# camelize: :lower

json.set! @tab.id do
  json.extract! @tab, :tab_total, :initial_amount_owed, :owed_by_user_id, :owed_to_user_id, :description
end

json.extract! user, :id, :email, :username

json.total_balance user.total_balance
json.you_owe user.you_owe
json.you_are_owed user.you_are_owed
json.tabs user.tabs
json.owed_tabs user.owed_tabs
json.you_are_owed_tabs user.you_are_owed_tabs
json.owed_tabs_info user.owed_tabs_info
json.you_are_owed_tabs_info user.you_are_owed_tabs_info
json.friends user.friends
json.highest_friend_balance user.highest_friend_balance
json.friend_and_balance_array user.friend_and_balance_array
json.recent_activity user.recent_activity

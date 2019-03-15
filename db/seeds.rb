# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'pry'

users = [
  {email: "latrice_royale@hotmail.co.uk", password: "learnlovecode", username:"Latrice"},
  {email: "ginger_minj@hotmail.co.uk", password: "learnlovecode", username:"Ginger"},
  {email: "laganga_estranga@hotmail.co.uk", password: "learnlovecode", username:"Laganga"},
  {email: "bianca_delrio@hotmail.co.uk", password: "learnlovecode", username:"Bianca"},
  {email: "chad_michaels@hotmail.co.uk", password: "learnlovecode", username:"Chad"},
  {email: "sharon_needles@hotmail.co.uk", password: "learnlovecode", username:"Sharon"},
  {email: "courtney_act@hotmail.co.uk", password: "learnlovecode", username:"Courtney"},
  {email: "jinxx_monsoon@hotmail.co.uk", password: "learnlovecode", username:"Jinxx"},
  {email: "sasha_belle@hotmail.co.uk", password: "learnlovecode", username:"Sasha"},
  {email: "trixie_mattel@hotmail.co.uk", password: "learnlovecode", username:"Trixie"},
  {email: "katya_zamalochikova@hotmail.co.uk", password: "learnlovecode", username:"Katya"},
  {email: "ariel_versace@hotmail.co.uk", password: "learnlovecode", username:"Ariel"},
  {email: "vanessa_vanjie@hotmail.co.uk", password: "learnlovecode", username:"Vanjie"},
  {email: "adore_delano@hotmail.co.uk", password: "learnlovecode", username:"Adore"},
  {email: "monet_xchange@hotmail.co.uk", password: "learnlovecode", username:"Monet"},
  {email: "monique_heart@hotmail.co.uk", password: "learnlovecode", username:"Monique"},
  {email: "manila_luzon@hotmail.co.uk", password: "learnlovecode", username:"Manila"},
  {email: "april_carrion@hotmail.co.uk", password: "learnlovecode", username:"April"},
  {email: "naisha_lopez@hotmail.co.uk", password: "learnlovecode", username:"Naisha"},
  {email: "gia_gunn@hotmail.co.uk", password: "learnlovecode", username:"Gia"},
  {email: "tyra_sanchez@hotmail.co.uk", password: "learnlovecode", username:"Tyra"}
]

users.each{ |user| User.create(user)}

tab_for = ["household items", "groceries", "trip", "dinner", "lunch", "breakfast", "outing", "bill", "rent", "insurance", "electricity", "utilities"]

50.times do
  Tab.create(
    tab_total: rand(100..500),
    initial_amount_owed: rand(10..99),
    owed_by_user_id: rand(1..10),
    owed_to_user_id: rand(11..20),
    description: tab_for.sample )
end

Tab.all.each do |tab|
  Friendship.create(user1_id: tab.owed_to_user_id, user2_id: tab.owed_by_user_id) unless Friendship.where(user1_id: tab.owed_to_user_id, user2_id: tab.owed_by_user_id).length > 0
end
# binding.pry
# 0
# description_contents = description.map{|comment| description[:content]}
#
# comment_contents.each {|comment_content|
#   # binding.pry
#   Comment.create(
#     content: comment_content,
#     user_id: User.all.sample.id,
#     post_id: Post.all.sample.id
#   )
# }

class Tab < ApplicationRecord
  validates :tab_total, numericality: { less_than_or_equal_to: 999999999, greater_than: 0 }

  validates_numericality_of :initial_amount_owed
  validates_numericality_of :tab_total
  # validate :tab_total_is_greater

  has_many :payments

  belongs_to :owed_by_user,
    class_name: 'User',
    foreign_key: :owed_by_user_id

  belongs_to :owed_to_user,
    class_name: 'User',
    foreign_key: :owed_to_user_id

end

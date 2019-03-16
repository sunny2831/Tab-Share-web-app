class Tab < ApplicationRecord
  validates :tab_total, numericality: { less_than_or_equal_to: 999999999, greater_than: 0 }

  validates_numericality_of :initial_amount_owed
  validates_numericality_of :tab_total
  validate :tab_total_is_greater

  def total_bill_amount_is_greater
      self.errors[:base] << "The amount owed on the bill must be less than or equal to the total bill amount." unless total_bill_amount.to_f >= amount_originally_owed.to_f
  end

  has_many :payments

  belongs_to :owed_by_user,
    class_name: 'User',
    foreign_key: :owed_by_user_id

  belongs_to :owed_to_user,
    class_name: 'User',
    foreign_key: :

  def users
    return [self.owed_by_user, self.owed_to_user]
  end

  def other_user(current_user)
    (self.users.select {|user| user != current_user } )[0]
  end

  def balance
    #returns current balance always to the owing_at_creation user
    #so if it returns a negative number, it means the only user is currently owing the balance
    return_balance = self.initial_amount_owed
    self.payments.each do |payment|
      if payment.paying_user_id === self.owed_by_user_id
        return_balance -= payment.payment_amount
      else
        return_balance += payment.payment_amount
      end
    end
    return return_balance
  end

  def owed_by_user
    if self.balance > 0
      return User.find(self.owed_by_user_id)
    else
      return User.find(self.owed_to_user_id)
    end
  end

  def owed_to_user
    if self.balance > 0
      return User.find(self.owed_to_at_creation_user_id)
    else
      return User.find(self.owing_at_creation_user_id)
    end
  end

end

class User < ApplicationRecord

  # validates :username, :email, :password_digest, :session_token, presence: true
  # validates :email, uniqueness: true
  # after_initialize :ensure_session_token
  #
  # attr_reader :password
  # validates :password, length: { minimum: 6 }, allow_nil: true
  # validates :username, :email, length: { maximum: 30 }
  has_secure_password

  has_many :owed_by_tabs,
    class_name: 'Tab',
    foreign_key: :owed_by_user_id

  has_many :owed_to_tabs,
    class_name: 'Tab',
    foreign_key: :owed_to_user_id

end

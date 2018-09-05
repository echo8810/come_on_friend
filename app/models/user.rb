class User < ApplicationRecord
  validates :account_name ,presence: true
  validates :account_name ,uniqueness: true
  validates :account_name ,length: { maximum: 16 }

  validates :mail_address, presence: true
  validates :mail_address, uniqueness: true

  has_secure_password validations: true
end

class User < ApplicationRecord
  ADMIN_ROLE = 'admin'.freeze
  USER_ROLE = 'user'.freeze
  ROLES = [ADMIN_ROLE, USER_ROLE].freeze

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :cart
  has_many :orders

  validates :role, presence: true, inclusion: ROLES

  def admin?
    role == ADMIN_ROLE
  end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :categories, dependent: :destroy
  has_many :expenses, dependent: :destroy

  def admin?
    role == 'admin'
  end

  def user?
    role == 'user' || role.nil?
  end
end

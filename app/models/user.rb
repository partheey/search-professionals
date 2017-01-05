class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates :email, presence: true
  validates :firstname, presence: true, length: {in: 2..100}
  validates :firstname, length: {in: 2..100}
end

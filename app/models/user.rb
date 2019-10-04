class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :rememberable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable, :trackable

  validates :name, :email, presence: true
end

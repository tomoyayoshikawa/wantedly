class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :offers
  has_many :applies
  has_many :companies, through: :applies
end

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :applies
  has_many :offers, through: :applies
  has_many :events
end

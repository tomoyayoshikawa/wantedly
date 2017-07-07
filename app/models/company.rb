class Company < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :offers
  has_many :applies
  has_many :users, through: :applies
end

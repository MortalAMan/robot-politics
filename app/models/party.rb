class Party < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :score, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 10
    }
  has_many :party_policies, dependent: :destroy
  has_many :policies, through: :party_policies
  has_many :candidates
end

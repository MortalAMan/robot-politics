class Policy < ApplicationRecord
  validates_presence_of :name, :score
  validates_uniqueness_of :name
  validates_score, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 10
    }
  has_many :party_policies, dependent: :destroy
  has_many :parties, through: :party_policies
end

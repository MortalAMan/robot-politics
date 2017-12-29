class Candidate < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :score, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 10
    }
  belongs_to :party
  has_many :users
end

class Person < ApplicationRecord
  validates :age, numericality: { greater_than_or_equal_to: 0 }
end

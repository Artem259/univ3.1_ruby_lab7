class Form < ApplicationRecord
  validates :surname, presence: true
  validates :school, presence: true,
            numericality: {only_integer: true,
                           greater_than_or_equal_to: 1}
  validates :grade, presence: true,
            numericality: {only_integer: true,
                           greater_than_or_equal_to: 1,
                           less_than_or_equal_to: 11}
  validates :place,
            numericality: {only_integer: true,
                           greater_than_or_equal_to: 1}
end

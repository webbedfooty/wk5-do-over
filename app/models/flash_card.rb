# Question - text
# Answer - text
# ?? Category

class FlashCard < ActiveRecord::Base
  validates :question, presence: true
  validates :answer, presence: true
  validates :point_value, presence: true

  has_and_belongs_to_many :categories
end

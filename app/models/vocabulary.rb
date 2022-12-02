class Vocabulary < ApplicationRecord
  validates :word, presence: true
  validates :meaning, presence: true
  validates :level, presence: true
end

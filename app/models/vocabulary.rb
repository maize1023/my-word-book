class Vocabulary < ApplicationRecord
  validates :word, presence: true
  validates :meaning, presence: true
  validates :level, presence: true

  paginates_per 10
end

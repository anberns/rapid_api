class Phoneme < ApplicationRecord
  has_many :student_phonemes
  has_many :students, through: :student_phonemes
end

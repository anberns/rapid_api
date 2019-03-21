class PhonemeSerializer < ActiveModel::Serializer
  attributes :id, :characters, :classification, :students
  has_many :student_phonemes
  has_many :students, through: student_phonemes
end

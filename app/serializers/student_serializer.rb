class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :stage, :phonemes
  belongs_to :user
  has_many :student_phonemes
  has_many :phonemes, through: :student_phonemes
end

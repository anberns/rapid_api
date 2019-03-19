class StudentPhoneme < ApplicationRecord
  belongs_to :student 
  belongs_to :phoneme
end

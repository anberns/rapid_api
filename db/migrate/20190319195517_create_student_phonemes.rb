class CreateStudentPhonemes < ActiveRecord::Migration[5.2]
  def change
    create_table :student_phonemes do |t|
      t.integer :student_id
      t.integer :phoneme_id
    end
  end
end

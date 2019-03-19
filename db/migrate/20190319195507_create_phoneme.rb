class CreatePhoneme < ActiveRecord::Migration[5.2]
  def change
    create_table :phonemes do |t|
      t.string :characters
      t.string :classification
    end
  end
end

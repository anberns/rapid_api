class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :stage
      t.integer :user_id

      t.timestamps
    end
  end
end

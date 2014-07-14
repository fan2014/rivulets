class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :student_id

      t.timestamps
    end
    
    add_index :users, :student_id, unique: true
  end
end

class AddTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.date :due_date
      t.boolean :done, default: false, null: false

      t.timestamps null: false
    end
  end
end

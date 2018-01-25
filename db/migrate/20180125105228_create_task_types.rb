class CreateTaskTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :task_types do |t|
      t.text :name

      t.timestamps
    end
  end
end

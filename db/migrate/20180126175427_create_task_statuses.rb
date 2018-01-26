class CreateTaskStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :task_statuses do |t|
      t.text :name
      t.integer :order

      t.timestamps
    end
  end
end

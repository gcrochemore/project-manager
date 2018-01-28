class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.integer :identifier
      t.references :task_type, foreign_key: true
      t.references :task_status, foreign_key: true
      t.string :name
      t.text :description
      t.references :project, foreign_key: true
      t.references :project_bundle, foreign_key: true
      t.references :task, foreign_key: true
      t.float :estimated_time
      t.float :consumed_time
      t.float :remaining_time
      t.float :planned_time
      t.date :begin_date
      t.date :end_date

      t.timestamps
    end
  end
end

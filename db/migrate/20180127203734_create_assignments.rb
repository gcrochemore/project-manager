class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.date :date
      t.references :user, foreign_key: true
      t.references :task, foreign_key: true
      t.float :time
      t.text :comment
      t.boolean :consumed

      t.timestamps
    end
  end
end

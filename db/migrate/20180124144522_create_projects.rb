class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.references :organization, foreign_key: true
      t.string :bug_tracker

      t.timestamps
    end
  end
end

class CreateProjectBundles < ActiveRecord::Migration[5.1]
  def change
    create_table :project_bundles do |t|
      t.string :name
      t.references :project, foreign_key: true
      t.float :estimated_time

      t.timestamps
    end
  end
end

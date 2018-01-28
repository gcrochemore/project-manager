class CreateDeliveries < ActiveRecord::Migration[5.1]
  def change
    create_table :deliveries do |t|
      t.text :name
      t.references :project_bundle, foreign_key: true
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end

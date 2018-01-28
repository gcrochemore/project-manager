class CreateDeliveries < ActiveRecord::Migration[5.1]
  def change
    create_table :deliveries do |t|
      t.text :name
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end

class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.text :description
      t.float :price
      t.integer :duration_minutes
      t.references :sub_category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps

    end
  end
end

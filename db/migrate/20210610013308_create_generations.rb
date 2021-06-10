class CreateGenerations < ActiveRecord::Migration[6.1]
  def change
    create_table :generations do |t|
      t.string :nom, null: false

      t.timestamps
    end
  end
end

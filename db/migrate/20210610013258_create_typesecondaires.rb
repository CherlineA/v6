class CreateTypesecondaires < ActiveRecord::Migration[6.1]
  def change
    create_table :typesecondaires do |t|
      t.string :nom, null: false

      t.timestamps
    end
  end
end

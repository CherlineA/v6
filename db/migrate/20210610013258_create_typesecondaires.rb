class CreateTypesecondaires < ActiveRecord::Migration[6.1]
  def change
    create_table :typesecondaires do |t|
      t.string :nom

      t.timestamps
    end
  end
end

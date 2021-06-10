class CreateTypeprincipals < ActiveRecord::Migration[6.1]
  def change
    create_table :typeprincipals do |t|
      t.string :nom, null: false

      t.timestamps
    end
  end
end

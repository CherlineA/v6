class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.integer :numero
      t.string :name
      t.integer :total
      t.integer :hp
      t.integer :attack
      t.integer :defense
      t.integer :speattack
      t.integer :spedefense
      t.integer :speed
      t.boolean :legendary
      t.references :typeprincipal, null: false, foreign_key: true
      t.references :typesecondaire, null:true, foreign_key: true
      t.references :generation, null: false, foreign_key: true

      t.timestamps
    end
  end
end

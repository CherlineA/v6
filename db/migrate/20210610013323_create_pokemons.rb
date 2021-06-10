class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.integer :numero 
      t.string :name, null: false
      t.integer :total, default: 0
      t.integer :hp, null: false
      t.integer :attack, null: false
      t.integer :defense, null: false
      t.integer :speattack, default: 0 
      t.integer :spedefense, default: 0
      t.integer :speed, default: 0
      t.boolean :legendary, default: false
      t.references :typeprincipal, null: false, foreign_key: true
      t.references :typesecondaire, null: true, foreign_key: true
      t.references :generation, null: false, foreign_key: true

      t.timestamps
    end
  end
end

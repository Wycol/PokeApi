class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :poke_id
      t.timestamps
    end

    create_table :types do |t|
      t.string :name
      t.timestamps
    end

    create_table :pokemon_types do |t|
        t.belongs_to :pokemon
        t.belongs_to :type
        t.timestamps
    end

    create_table :bases do |t|
      t.integer :hp
      t.integer :attack
      t.integer :defense
      t.integer :sp_attack
      t.integer :sp_defense
      t.integer :speed
      t.belongs_to :pokemon
      t.timestamps
    end

  end
end

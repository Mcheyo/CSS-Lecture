class CreatePokeballs < ActiveRecord::Migration[6.0]
  def change
    create_table :pokeballs do |t|
      t.integer "pokemon_id"
      t.integer "trainer_id"
      t.timestamps
    end
  end
end

class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :age
      t.string :hair_color
      t.string :eye_color
      t.string :gender
      t.string :state_of_being
      t.integer :power_level
      t.string :magical_abilitys

      t.timestamps
    end
  end
end

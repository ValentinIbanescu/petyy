class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :age
      t.string :category
      t.string :diet
      t.string :medical_situation

      t.timestamps
    end
  end
end

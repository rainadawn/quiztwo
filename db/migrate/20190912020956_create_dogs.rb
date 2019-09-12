class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|

      t.string :name
      t.string :breed
      t.string :age
      t.text :description
      t.string :picture
      t.timestamps
    end
  end
end

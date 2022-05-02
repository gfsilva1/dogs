class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :description
      t.string :temper
      t.string :origin
      t.string :popularity

      t.timestamps
    end
  end
end

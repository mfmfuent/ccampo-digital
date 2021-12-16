class CreateTrabajos < ActiveRecord::Migration[6.1]
  def change
    create_table :trabajos do |t|
      t.string :nombre
      t.text :descripcion
      t.references :actividads, null: false, foreign_key: true

      t.timestamps
    end
  end
end

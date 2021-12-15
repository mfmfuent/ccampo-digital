class CreateRepresentacions < ActiveRecord::Migration[6.1]
  def change
    create_table :representacions do |t|
      t.string :nombre
      t.string :descripcion
      t.references :representantes, null: false, foreign_key: true
      t.references :explotacions, null: false, foreign_key: true

      t.timestamps
    end
  end
end

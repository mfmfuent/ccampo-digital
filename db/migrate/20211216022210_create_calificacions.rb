class CreateCalificacions < ActiveRecord::Migration[6.1]
  def change
    create_table :calificacions do |t|
      t.string :nombre
      t.references :trabajadors, null: false, foreign_key: true
      t.references :tipo_trabajadors, null: false, foreign_key: true

      t.timestamps
    end
  end
end

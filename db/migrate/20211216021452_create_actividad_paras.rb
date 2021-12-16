class CreateActividadParas < ActiveRecord::Migration[6.1]
  def change
    create_table :actividad_paras do |t|
      t.string :nombre
      t.references :actividads, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateCultivos < ActiveRecord::Migration[6.1]
  def change
    create_table :cultivos do |t|
      t.string :nombre
      t.references :fitosanitarios, null: false, foreign_key: true
      t.references :actividads, null: false, foreign_key: true

      t.timestamps
    end
  end
end

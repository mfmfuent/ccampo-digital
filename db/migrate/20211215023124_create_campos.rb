class CreateCampos < ActiveRecord::Migration[6.1]
  def change
    create_table :campos do |t|
      t.string :nombre
      t.string :superficie
      t.references :explotacions, null: false, foreign_key: true

      t.timestamps
    end
  end
end

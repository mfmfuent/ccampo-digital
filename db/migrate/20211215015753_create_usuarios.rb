class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido_materno
      t.string :apellido_paterno
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end

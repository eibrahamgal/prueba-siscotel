class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :tipo_persona
      t.string :documento
      t.date :fecha_emision
      t.date :fecha_vencimiento
      t.string :nombre
      t.string :correo
      t.string :telefono
      t.string :telefono_secundario

      t.timestamps
    end
    add_index :users, :documento, unique: true
    add_index :users, :correo, unique: true
  end
end

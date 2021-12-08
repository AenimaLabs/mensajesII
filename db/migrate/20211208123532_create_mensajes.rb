class CreateMensajes < ActiveRecord::Migration[6.1]
  def change
    create_table :mensajes do |t|
      t.string :autor
      t.text :mensaje
      t.references :usuario, null: false, foreign_key: true
      t.references :publicacion, null: false, foreign_key: true

      t.timestamps
    end
  end
end

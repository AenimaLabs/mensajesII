class CreatePropietarios < ActiveRecord::Migration[6.1]
  def change
    create_table :propietarios do |t|
      t.references :usuario, null: false, foreign_key: true
      t.references :blog, null: false, foreign_key: true

      t.timestamps
    end
  end
end

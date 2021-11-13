class CreateDetalles < ActiveRecord::Migration[6.0]
  def change
    create_table :detalles do |t|
      t.integer :cantidad
      t.references :Prestamos, null: false, foreign_key: true
      t.references :Libros, null: false, foreign_key: true

      t.timestamps
    end
  end
end

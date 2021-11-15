class CreatePrestamos < ActiveRecord::Migration[6.0]
  def change
    create_table :prestamos do |t|
      t.date :fecha
      t.integer :estado
      t.references :Usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end

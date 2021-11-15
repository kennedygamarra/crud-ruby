class CreateMultas < ActiveRecord::Migration[6.0]
  def change
    create_table :multas do |t|
      t.decimal :valor
      t.date :fecha
      t.integer :estado
      t.references :Prestamo, null: false, foreign_key: true

      t.timestamps
    end
  end
end

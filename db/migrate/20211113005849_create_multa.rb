class CreateMulta < ActiveRecord::Migration[6.0]
  def change
    create_table :multa do |t|
      t.decimal :valor
      t.date :fecha
      t.integer :estado
      t.references :Prestamos, null: false, foreign_key: true

      t.timestamps
    end
  end
end

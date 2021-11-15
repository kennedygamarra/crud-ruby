class Detalle < ApplicationRecord
  belongs_to :Prestamo, :optional => true
  belongs_to :Libro, :optional => true
end

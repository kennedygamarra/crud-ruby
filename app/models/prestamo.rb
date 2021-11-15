class Prestamo < ApplicationRecord
  belongs_to :Usuario, :optional => true
end

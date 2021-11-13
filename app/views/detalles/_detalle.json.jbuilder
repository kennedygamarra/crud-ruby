json.extract! detalle, :id, :cantidad, :Prestamos_id, :Libros_id, :created_at, :updated_at
json.url detalle_url(detalle, format: :json)

json.extract! prestamo, :id, :fecha, :estado, :Usuarios_id, :created_at, :updated_at
json.url prestamo_url(prestamo, format: :json)

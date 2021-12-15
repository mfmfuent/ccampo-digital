json.extract! usuario, :id, :nombre, :apellido_materno, :apellido_paterno, :email, :password, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)

json.extract! representante, :id, :nombre, :apellido_materno, :apellido_paterno, :rut, :email, :direccion, :localidad, :comuna, :region, :pais, :telefono, :tipo_representacion, :explotacions_id, :created_at, :updated_at
json.url representante_url(representante, format: :json)

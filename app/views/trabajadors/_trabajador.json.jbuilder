json.extract! trabajador, :id, :nombre, :tipo_trabajador, :rut, :carnet_aplicador, :calificacion, :asesor, :email, :telefono, :direccion, :localidad, :comuna, :region, :pais, :foto, :comentarios, :tipo_trabajadors_id, :actividads_id, :created_at, :updated_at
json.url trabajador_url(trabajador, format: :json)

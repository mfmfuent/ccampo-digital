json.extract! explotacion, :id, :nombre_explotacion, :rut, :email, :direccion, :telefono, :localidad, :comuna, :region, :pais, :thumbnail, :image, :nacional, :created_at, :updated_at
json.url explotacion_url(explotacion, format: :json)

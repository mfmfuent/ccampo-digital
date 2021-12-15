require "test_helper"

class RepresentantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @representante = representantes(:one)
  end

  test "should get index" do
    get representantes_url
    assert_response :success
  end

  test "should get new" do
    get new_representante_url
    assert_response :success
  end

  test "should create representante" do
    assert_difference('Representante.count') do
      post representantes_url, params: { representante: { apellido_materno: @representante.apellido_materno, apellido_paterno: @representante.apellido_paterno, comuna: @representante.comuna, direccion: @representante.direccion, email: @representante.email, explotacions_id: @representante.explotacions_id, localidad: @representante.localidad, nombre: @representante.nombre, pais: @representante.pais, region: @representante.region, rut: @representante.rut, telefono: @representante.telefono, tipo_representacion: @representante.tipo_representacion } }
    end

    assert_redirected_to representante_url(Representante.last)
  end

  test "should show representante" do
    get representante_url(@representante)
    assert_response :success
  end

  test "should get edit" do
    get edit_representante_url(@representante)
    assert_response :success
  end

  test "should update representante" do
    patch representante_url(@representante), params: { representante: { apellido_materno: @representante.apellido_materno, apellido_paterno: @representante.apellido_paterno, comuna: @representante.comuna, direccion: @representante.direccion, email: @representante.email, explotacions_id: @representante.explotacions_id, localidad: @representante.localidad, nombre: @representante.nombre, pais: @representante.pais, region: @representante.region, rut: @representante.rut, telefono: @representante.telefono, tipo_representacion: @representante.tipo_representacion } }
    assert_redirected_to representante_url(@representante)
  end

  test "should destroy representante" do
    assert_difference('Representante.count', -1) do
      delete representante_url(@representante)
    end

    assert_redirected_to representantes_url
  end
end

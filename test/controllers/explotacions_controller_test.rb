require "test_helper"

class ExplotacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @explotacion = explotacions(:one)
  end

  test "should get index" do
    get explotacions_url
    assert_response :success
  end

  test "should get new" do
    get new_explotacion_url
    assert_response :success
  end

  test "should create explotacion" do
    assert_difference('Explotacion.count') do
      post explotacions_url, params: { explotacion: { comuna: @explotacion.comuna, direccion: @explotacion.direccion, email: @explotacion.email, image: @explotacion.image, localidad: @explotacion.localidad, nacional: @explotacion.nacional, nombre_explotacion: @explotacion.nombre_explotacion, pais: @explotacion.pais, region: @explotacion.region, rut: @explotacion.rut, telefono: @explotacion.telefono, thumbnail: @explotacion.thumbnail } }
    end

    assert_redirected_to explotacion_url(Explotacion.last)
  end

  test "should show explotacion" do
    get explotacion_url(@explotacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_explotacion_url(@explotacion)
    assert_response :success
  end

  test "should update explotacion" do
    patch explotacion_url(@explotacion), params: { explotacion: { comuna: @explotacion.comuna, direccion: @explotacion.direccion, email: @explotacion.email, image: @explotacion.image, localidad: @explotacion.localidad, nacional: @explotacion.nacional, nombre_explotacion: @explotacion.nombre_explotacion, pais: @explotacion.pais, region: @explotacion.region, rut: @explotacion.rut, telefono: @explotacion.telefono, thumbnail: @explotacion.thumbnail } }
    assert_redirected_to explotacion_url(@explotacion)
  end

  test "should destroy explotacion" do
    assert_difference('Explotacion.count', -1) do
      delete explotacion_url(@explotacion)
    end

    assert_redirected_to explotacions_url
  end
end

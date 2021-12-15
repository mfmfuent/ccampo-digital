require "test_helper"

class RepresentacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @representacion = representacions(:one)
  end

  test "should get index" do
    get representacions_url
    assert_response :success
  end

  test "should get new" do
    get new_representacion_url
    assert_response :success
  end

  test "should create representacion" do
    assert_difference('Representacion.count') do
      post representacions_url, params: { representacion: { descripcion: @representacion.descripcion, explotacions_id: @representacion.explotacions_id, nombre: @representacion.nombre, representantes_id: @representacion.representantes_id } }
    end

    assert_redirected_to representacion_url(Representacion.last)
  end

  test "should show representacion" do
    get representacion_url(@representacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_representacion_url(@representacion)
    assert_response :success
  end

  test "should update representacion" do
    patch representacion_url(@representacion), params: { representacion: { descripcion: @representacion.descripcion, explotacions_id: @representacion.explotacions_id, nombre: @representacion.nombre, representantes_id: @representacion.representantes_id } }
    assert_redirected_to representacion_url(@representacion)
  end

  test "should destroy representacion" do
    assert_difference('Representacion.count', -1) do
      delete representacion_url(@representacion)
    end

    assert_redirected_to representacions_url
  end
end

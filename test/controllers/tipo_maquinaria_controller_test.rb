require "test_helper"

class TipoMaquinariaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_maquinarium = tipo_maquinaria(:one)
  end

  test "should get index" do
    get tipo_maquinaria_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_maquinarium_url
    assert_response :success
  end

  test "should create tipo_maquinarium" do
    assert_difference('TipoMaquinarium.count') do
      post tipo_maquinaria_url, params: { tipo_maquinarium: { descripcion: @tipo_maquinarium.descripcion, maquinaria_id: @tipo_maquinarium.maquinaria_id, nombre: @tipo_maquinarium.nombre } }
    end

    assert_redirected_to tipo_maquinarium_url(TipoMaquinarium.last)
  end

  test "should show tipo_maquinarium" do
    get tipo_maquinarium_url(@tipo_maquinarium)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_maquinarium_url(@tipo_maquinarium)
    assert_response :success
  end

  test "should update tipo_maquinarium" do
    patch tipo_maquinarium_url(@tipo_maquinarium), params: { tipo_maquinarium: { descripcion: @tipo_maquinarium.descripcion, maquinaria_id: @tipo_maquinarium.maquinaria_id, nombre: @tipo_maquinarium.nombre } }
    assert_redirected_to tipo_maquinarium_url(@tipo_maquinarium)
  end

  test "should destroy tipo_maquinarium" do
    assert_difference('TipoMaquinarium.count', -1) do
      delete tipo_maquinarium_url(@tipo_maquinarium)
    end

    assert_redirected_to tipo_maquinaria_url
  end
end

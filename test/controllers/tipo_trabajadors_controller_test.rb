require "test_helper"

class TipoTrabajadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_trabajador = tipo_trabajadors(:one)
  end

  test "should get index" do
    get tipo_trabajadors_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_trabajador_url
    assert_response :success
  end

  test "should create tipo_trabajador" do
    assert_difference('TipoTrabajador.count') do
      post tipo_trabajadors_url, params: { tipo_trabajador: { nombre: @tipo_trabajador.nombre } }
    end

    assert_redirected_to tipo_trabajador_url(TipoTrabajador.last)
  end

  test "should show tipo_trabajador" do
    get tipo_trabajador_url(@tipo_trabajador)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_trabajador_url(@tipo_trabajador)
    assert_response :success
  end

  test "should update tipo_trabajador" do
    patch tipo_trabajador_url(@tipo_trabajador), params: { tipo_trabajador: { nombre: @tipo_trabajador.nombre } }
    assert_redirected_to tipo_trabajador_url(@tipo_trabajador)
  end

  test "should destroy tipo_trabajador" do
    assert_difference('TipoTrabajador.count', -1) do
      delete tipo_trabajador_url(@tipo_trabajador)
    end

    assert_redirected_to tipo_trabajadors_url
  end
end

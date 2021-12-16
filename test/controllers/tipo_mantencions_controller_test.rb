require "test_helper"

class TipoMantencionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_mantencion = tipo_mantencions(:one)
  end

  test "should get index" do
    get tipo_mantencions_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_mantencion_url
    assert_response :success
  end

  test "should create tipo_mantencion" do
    assert_difference('TipoMantencion.count') do
      post tipo_mantencions_url, params: { tipo_mantencion: { nombre: @tipo_mantencion.nombre } }
    end

    assert_redirected_to tipo_mantencion_url(TipoMantencion.last)
  end

  test "should show tipo_mantencion" do
    get tipo_mantencion_url(@tipo_mantencion)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_mantencion_url(@tipo_mantencion)
    assert_response :success
  end

  test "should update tipo_mantencion" do
    patch tipo_mantencion_url(@tipo_mantencion), params: { tipo_mantencion: { nombre: @tipo_mantencion.nombre } }
    assert_redirected_to tipo_mantencion_url(@tipo_mantencion)
  end

  test "should destroy tipo_mantencion" do
    assert_difference('TipoMantencion.count', -1) do
      delete tipo_mantencion_url(@tipo_mantencion)
    end

    assert_redirected_to tipo_mantencions_url
  end
end

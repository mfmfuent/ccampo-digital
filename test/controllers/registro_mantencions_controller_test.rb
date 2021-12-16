require "test_helper"

class RegistroMantencionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_mantencion = registro_mantencions(:one)
  end

  test "should get index" do
    get registro_mantencions_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_mantencion_url
    assert_response :success
  end

  test "should create registro_mantencion" do
    assert_difference('RegistroMantencion.count') do
      post registro_mantencions_url, params: { registro_mantencion: { costo: @registro_mantencion.costo, descripcion: @registro_mantencion.descripcion, factura: @registro_mantencion.factura, fecha: @registro_mantencion.fecha, inspeccion_oficial: @registro_mantencion.inspeccion_oficial, maquinaria_id: @registro_mantencion.maquinaria_id, nombre: @registro_mantencion.nombre, tipo_mantencions_id: @registro_mantencion.tipo_mantencions_id } }
    end

    assert_redirected_to registro_mantencion_url(RegistroMantencion.last)
  end

  test "should show registro_mantencion" do
    get registro_mantencion_url(@registro_mantencion)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_mantencion_url(@registro_mantencion)
    assert_response :success
  end

  test "should update registro_mantencion" do
    patch registro_mantencion_url(@registro_mantencion), params: { registro_mantencion: { costo: @registro_mantencion.costo, descripcion: @registro_mantencion.descripcion, factura: @registro_mantencion.factura, fecha: @registro_mantencion.fecha, inspeccion_oficial: @registro_mantencion.inspeccion_oficial, maquinaria_id: @registro_mantencion.maquinaria_id, nombre: @registro_mantencion.nombre, tipo_mantencions_id: @registro_mantencion.tipo_mantencions_id } }
    assert_redirected_to registro_mantencion_url(@registro_mantencion)
  end

  test "should destroy registro_mantencion" do
    assert_difference('RegistroMantencion.count', -1) do
      delete registro_mantencion_url(@registro_mantencion)
    end

    assert_redirected_to registro_mantencions_url
  end
end

require "test_helper"

class AsesorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asesor = asesors(:one)
  end

  test "should get index" do
    get asesors_url
    assert_response :success
  end

  test "should get new" do
    get new_asesor_url
    assert_response :success
  end

  test "should create asesor" do
    assert_difference('Asesor.count') do
      post asesors_url, params: { asesor: { apellido_materno: @asesor.apellido_materno, apellido_paterno: @asesor.apellido_paterno, email: @asesor.email, explotacions_id: @asesor.explotacions_id, nombre: @asesor.nombre, numero_inscripcion: @asesor.numero_inscripcion, rut: @asesor.rut, telefono: @asesor.telefono, tipo_representacion: @asesor.tipo_representacion } }
    end

    assert_redirected_to asesor_url(Asesor.last)
  end

  test "should show asesor" do
    get asesor_url(@asesor)
    assert_response :success
  end

  test "should get edit" do
    get edit_asesor_url(@asesor)
    assert_response :success
  end

  test "should update asesor" do
    patch asesor_url(@asesor), params: { asesor: { apellido_materno: @asesor.apellido_materno, apellido_paterno: @asesor.apellido_paterno, email: @asesor.email, explotacions_id: @asesor.explotacions_id, nombre: @asesor.nombre, numero_inscripcion: @asesor.numero_inscripcion, rut: @asesor.rut, telefono: @asesor.telefono, tipo_representacion: @asesor.tipo_representacion } }
    assert_redirected_to asesor_url(@asesor)
  end

  test "should destroy asesor" do
    assert_difference('Asesor.count', -1) do
      delete asesor_url(@asesor)
    end

    assert_redirected_to asesors_url
  end
end

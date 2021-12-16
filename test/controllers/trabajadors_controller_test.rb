require "test_helper"

class TrabajadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trabajador = trabajadors(:one)
  end

  test "should get index" do
    get trabajadors_url
    assert_response :success
  end

  test "should get new" do
    get new_trabajador_url
    assert_response :success
  end

  test "should create trabajador" do
    assert_difference('Trabajador.count') do
      post trabajadors_url, params: { trabajador: { actividads_id: @trabajador.actividads_id, asesor: @trabajador.asesor, calificacion: @trabajador.calificacion, carnet_aplicador: @trabajador.carnet_aplicador, comentarios: @trabajador.comentarios, comuna: @trabajador.comuna, direccion: @trabajador.direccion, email: @trabajador.email, foto: @trabajador.foto, localidad: @trabajador.localidad, nombre: @trabajador.nombre, pais: @trabajador.pais, region: @trabajador.region, rut: @trabajador.rut, telefono: @trabajador.telefono, tipo_trabajador: @trabajador.tipo_trabajador, tipo_trabajadors_id: @trabajador.tipo_trabajadors_id } }
    end

    assert_redirected_to trabajador_url(Trabajador.last)
  end

  test "should show trabajador" do
    get trabajador_url(@trabajador)
    assert_response :success
  end

  test "should get edit" do
    get edit_trabajador_url(@trabajador)
    assert_response :success
  end

  test "should update trabajador" do
    patch trabajador_url(@trabajador), params: { trabajador: { actividads_id: @trabajador.actividads_id, asesor: @trabajador.asesor, calificacion: @trabajador.calificacion, carnet_aplicador: @trabajador.carnet_aplicador, comentarios: @trabajador.comentarios, comuna: @trabajador.comuna, direccion: @trabajador.direccion, email: @trabajador.email, foto: @trabajador.foto, localidad: @trabajador.localidad, nombre: @trabajador.nombre, pais: @trabajador.pais, region: @trabajador.region, rut: @trabajador.rut, telefono: @trabajador.telefono, tipo_trabajador: @trabajador.tipo_trabajador, tipo_trabajadors_id: @trabajador.tipo_trabajadors_id } }
    assert_redirected_to trabajador_url(@trabajador)
  end

  test "should destroy trabajador" do
    assert_difference('Trabajador.count', -1) do
      delete trabajador_url(@trabajador)
    end

    assert_redirected_to trabajadors_url
  end
end

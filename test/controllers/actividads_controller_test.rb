require "test_helper"

class ActividadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actividad = actividads(:one)
  end

  test "should get index" do
    get actividads_url
    assert_response :success
  end

  test "should get new" do
    get new_actividad_url
    assert_response :success
  end

  test "should create actividad" do
    assert_difference('Actividad.count') do
      post actividads_url, params: { actividad: { act_para: @actividad.act_para, bodega: @actividad.bodega, campo: @actividad.campo, cantidad: @actividad.cantidad, det_med_no_quimica: @actividad.det_med_no_quimica, dosis: @actividad.dosis, fecha: @actividad.fecha, fecha_actuacion: @actividad.fecha_actuacion, fitosanitario: @actividad.fitosanitario, horas: @actividad.horas, intensidad_actuacion: @actividad.intensidad_actuacion, justifica_tratamiento: @actividad.justifica_tratamiento, litros_caldo: @actividad.litros_caldo, maquina: @actividad.maquina, minutos: @actividad.minutos, notas: @actividad.notas, numero_lote: @actividad.numero_lote, plaga: @actividad.plaga, tipo_actuacion: @actividad.tipo_actuacion, trabajador: @actividad.trabajador, trabajo: @actividad.trabajo } }
    end

    assert_redirected_to actividad_url(Actividad.last)
  end

  test "should show actividad" do
    get actividad_url(@actividad)
    assert_response :success
  end

  test "should get edit" do
    get edit_actividad_url(@actividad)
    assert_response :success
  end

  test "should update actividad" do
    patch actividad_url(@actividad), params: { actividad: { act_para: @actividad.act_para, bodega: @actividad.bodega, campo: @actividad.campo, cantidad: @actividad.cantidad, det_med_no_quimica: @actividad.det_med_no_quimica, dosis: @actividad.dosis, fecha: @actividad.fecha, fecha_actuacion: @actividad.fecha_actuacion, fitosanitario: @actividad.fitosanitario, horas: @actividad.horas, intensidad_actuacion: @actividad.intensidad_actuacion, justifica_tratamiento: @actividad.justifica_tratamiento, litros_caldo: @actividad.litros_caldo, maquina: @actividad.maquina, minutos: @actividad.minutos, notas: @actividad.notas, numero_lote: @actividad.numero_lote, plaga: @actividad.plaga, tipo_actuacion: @actividad.tipo_actuacion, trabajador: @actividad.trabajador, trabajo: @actividad.trabajo } }
    assert_redirected_to actividad_url(@actividad)
  end

  test "should destroy actividad" do
    assert_difference('Actividad.count', -1) do
      delete actividad_url(@actividad)
    end

    assert_redirected_to actividads_url
  end
end

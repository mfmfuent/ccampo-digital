require "application_system_test_case"

class ActividadsTest < ApplicationSystemTestCase
  setup do
    @actividad = actividads(:one)
  end

  test "visiting the index" do
    visit actividads_url
    assert_selector "h1", text: "Actividads"
  end

  test "creating a Actividad" do
    visit actividads_url
    click_on "New Actividad"

    fill_in "Act para", with: @actividad.act_para
    fill_in "Bodega", with: @actividad.bodega
    fill_in "Campo", with: @actividad.campo
    fill_in "Cantidad", with: @actividad.cantidad
    fill_in "Det med no quimica", with: @actividad.det_med_no_quimica
    fill_in "Dosis", with: @actividad.dosis
    fill_in "Fecha", with: @actividad.fecha
    fill_in "Fecha actuacion", with: @actividad.fecha_actuacion
    fill_in "Fitosanitario", with: @actividad.fitosanitario
    fill_in "Horas", with: @actividad.horas
    fill_in "Intensidad actuacion", with: @actividad.intensidad_actuacion
    fill_in "Justifica tratamiento", with: @actividad.justifica_tratamiento
    fill_in "Litros caldo", with: @actividad.litros_caldo
    fill_in "Maquina", with: @actividad.maquina
    fill_in "Minutos", with: @actividad.minutos
    fill_in "Notas", with: @actividad.notas
    fill_in "Numero lote", with: @actividad.numero_lote
    fill_in "Plaga", with: @actividad.plaga
    fill_in "Tipo actuacion", with: @actividad.tipo_actuacion
    fill_in "Trabajador", with: @actividad.trabajador
    fill_in "Trabajo", with: @actividad.trabajo
    click_on "Create Actividad"

    assert_text "Actividad was successfully created"
    click_on "Back"
  end

  test "updating a Actividad" do
    visit actividads_url
    click_on "Edit", match: :first

    fill_in "Act para", with: @actividad.act_para
    fill_in "Bodega", with: @actividad.bodega
    fill_in "Campo", with: @actividad.campo
    fill_in "Cantidad", with: @actividad.cantidad
    fill_in "Det med no quimica", with: @actividad.det_med_no_quimica
    fill_in "Dosis", with: @actividad.dosis
    fill_in "Fecha", with: @actividad.fecha
    fill_in "Fecha actuacion", with: @actividad.fecha_actuacion
    fill_in "Fitosanitario", with: @actividad.fitosanitario
    fill_in "Horas", with: @actividad.horas
    fill_in "Intensidad actuacion", with: @actividad.intensidad_actuacion
    fill_in "Justifica tratamiento", with: @actividad.justifica_tratamiento
    fill_in "Litros caldo", with: @actividad.litros_caldo
    fill_in "Maquina", with: @actividad.maquina
    fill_in "Minutos", with: @actividad.minutos
    fill_in "Notas", with: @actividad.notas
    fill_in "Numero lote", with: @actividad.numero_lote
    fill_in "Plaga", with: @actividad.plaga
    fill_in "Tipo actuacion", with: @actividad.tipo_actuacion
    fill_in "Trabajador", with: @actividad.trabajador
    fill_in "Trabajo", with: @actividad.trabajo
    click_on "Update Actividad"

    assert_text "Actividad was successfully updated"
    click_on "Back"
  end

  test "destroying a Actividad" do
    visit actividads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Actividad was successfully destroyed"
  end
end

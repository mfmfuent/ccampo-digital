require "application_system_test_case"

class FitosanitariosTest < ApplicationSystemTestCase
  setup do
    @fitosanitario = fitosanitarios(:one)
  end

  test "visiting the index" do
    visit fitosanitarios_url
    assert_selector "h1", text: "Fitosanitarios"
  end

  test "creating a Fitosanitario" do
    visit fitosanitarios_url
    click_on "New Fitosanitario"

    fill_in "Actividads", with: @fitosanitario.actividads_id
    fill_in "Ambito utilizacion", with: @fitosanitario.ambito_utilizacion
    fill_in "Cultivo", with: @fitosanitario.cultivo
    fill_in "Dosis", with: @fitosanitario.dosis
    fill_in "Fabricante", with: @fitosanitario.fabricante
    fill_in "Fecha caducidad", with: @fitosanitario.fecha_caducidad
    fill_in "Ficha tecnica", with: @fitosanitario.ficha_tecnica
    fill_in "Funcion", with: @fitosanitario.funcion
    fill_in "Litros caldo defecto", with: @fitosanitario.litros_caldo_defecto
    fill_in "Nombre", with: @fitosanitario.nombre
    fill_in "Periodo seguridad", with: @fitosanitario.periodo_seguridad
    fill_in "Registro", with: @fitosanitario.registro
    fill_in "Unidades", with: @fitosanitario.unidades
    fill_in "Unidades dosis", with: @fitosanitario.unidades_dosis
    click_on "Create Fitosanitario"

    assert_text "Fitosanitario was successfully created"
    click_on "Back"
  end

  test "updating a Fitosanitario" do
    visit fitosanitarios_url
    click_on "Edit", match: :first

    fill_in "Actividads", with: @fitosanitario.actividads_id
    fill_in "Ambito utilizacion", with: @fitosanitario.ambito_utilizacion
    fill_in "Cultivo", with: @fitosanitario.cultivo
    fill_in "Dosis", with: @fitosanitario.dosis
    fill_in "Fabricante", with: @fitosanitario.fabricante
    fill_in "Fecha caducidad", with: @fitosanitario.fecha_caducidad
    fill_in "Ficha tecnica", with: @fitosanitario.ficha_tecnica
    fill_in "Funcion", with: @fitosanitario.funcion
    fill_in "Litros caldo defecto", with: @fitosanitario.litros_caldo_defecto
    fill_in "Nombre", with: @fitosanitario.nombre
    fill_in "Periodo seguridad", with: @fitosanitario.periodo_seguridad
    fill_in "Registro", with: @fitosanitario.registro
    fill_in "Unidades", with: @fitosanitario.unidades
    fill_in "Unidades dosis", with: @fitosanitario.unidades_dosis
    click_on "Update Fitosanitario"

    assert_text "Fitosanitario was successfully updated"
    click_on "Back"
  end

  test "destroying a Fitosanitario" do
    visit fitosanitarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fitosanitario was successfully destroyed"
  end
end

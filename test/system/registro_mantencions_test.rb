require "application_system_test_case"

class RegistroMantencionsTest < ApplicationSystemTestCase
  setup do
    @registro_mantencion = registro_mantencions(:one)
  end

  test "visiting the index" do
    visit registro_mantencions_url
    assert_selector "h1", text: "Registro Mantencions"
  end

  test "creating a Registro mantencion" do
    visit registro_mantencions_url
    click_on "New Registro Mantencion"

    fill_in "Costo", with: @registro_mantencion.costo
    fill_in "Descripcion", with: @registro_mantencion.descripcion
    fill_in "Factura", with: @registro_mantencion.factura
    fill_in "Fecha", with: @registro_mantencion.fecha
    fill_in "Inspeccion oficial", with: @registro_mantencion.inspeccion_oficial
    fill_in "Maquinaria", with: @registro_mantencion.maquinaria_id
    fill_in "Nombre", with: @registro_mantencion.nombre
    fill_in "Tipo mantencions", with: @registro_mantencion.tipo_mantencions_id
    click_on "Create Registro mantencion"

    assert_text "Registro mantencion was successfully created"
    click_on "Back"
  end

  test "updating a Registro mantencion" do
    visit registro_mantencions_url
    click_on "Edit", match: :first

    fill_in "Costo", with: @registro_mantencion.costo
    fill_in "Descripcion", with: @registro_mantencion.descripcion
    fill_in "Factura", with: @registro_mantencion.factura
    fill_in "Fecha", with: @registro_mantencion.fecha
    fill_in "Inspeccion oficial", with: @registro_mantencion.inspeccion_oficial
    fill_in "Maquinaria", with: @registro_mantencion.maquinaria_id
    fill_in "Nombre", with: @registro_mantencion.nombre
    fill_in "Tipo mantencions", with: @registro_mantencion.tipo_mantencions_id
    click_on "Update Registro mantencion"

    assert_text "Registro mantencion was successfully updated"
    click_on "Back"
  end

  test "destroying a Registro mantencion" do
    visit registro_mantencions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Registro mantencion was successfully destroyed"
  end
end

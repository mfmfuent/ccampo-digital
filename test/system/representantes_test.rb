require "application_system_test_case"

class RepresentantesTest < ApplicationSystemTestCase
  setup do
    @representante = representantes(:one)
  end

  test "visiting the index" do
    visit representantes_url
    assert_selector "h1", text: "Representantes"
  end

  test "creating a Representante" do
    visit representantes_url
    click_on "New Representante"

    fill_in "Apellido materno", with: @representante.apellido_materno
    fill_in "Apellido paterno", with: @representante.apellido_paterno
    fill_in "Comuna", with: @representante.comuna
    fill_in "Direccion", with: @representante.direccion
    fill_in "Email", with: @representante.email
    fill_in "Explotacions", with: @representante.explotacions_id
    fill_in "Localidad", with: @representante.localidad
    fill_in "Nombre", with: @representante.nombre
    fill_in "Pais", with: @representante.pais
    fill_in "Region", with: @representante.region
    fill_in "Rut", with: @representante.rut
    fill_in "Telefono", with: @representante.telefono
    fill_in "Tipo representacion", with: @representante.tipo_representacion
    click_on "Create Representante"

    assert_text "Representante was successfully created"
    click_on "Back"
  end

  test "updating a Representante" do
    visit representantes_url
    click_on "Edit", match: :first

    fill_in "Apellido materno", with: @representante.apellido_materno
    fill_in "Apellido paterno", with: @representante.apellido_paterno
    fill_in "Comuna", with: @representante.comuna
    fill_in "Direccion", with: @representante.direccion
    fill_in "Email", with: @representante.email
    fill_in "Explotacions", with: @representante.explotacions_id
    fill_in "Localidad", with: @representante.localidad
    fill_in "Nombre", with: @representante.nombre
    fill_in "Pais", with: @representante.pais
    fill_in "Region", with: @representante.region
    fill_in "Rut", with: @representante.rut
    fill_in "Telefono", with: @representante.telefono
    fill_in "Tipo representacion", with: @representante.tipo_representacion
    click_on "Update Representante"

    assert_text "Representante was successfully updated"
    click_on "Back"
  end

  test "destroying a Representante" do
    visit representantes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Representante was successfully destroyed"
  end
end

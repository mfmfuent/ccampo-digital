require "application_system_test_case"

class AsesorsTest < ApplicationSystemTestCase
  setup do
    @asesor = asesors(:one)
  end

  test "visiting the index" do
    visit asesors_url
    assert_selector "h1", text: "Asesors"
  end

  test "creating a Asesor" do
    visit asesors_url
    click_on "New Asesor"

    fill_in "Apellido materno", with: @asesor.apellido_materno
    fill_in "Apellido paterno", with: @asesor.apellido_paterno
    fill_in "Email", with: @asesor.email
    fill_in "Explotacions", with: @asesor.explotacions_id
    fill_in "Nombre", with: @asesor.nombre
    fill_in "Numero inscripcion", with: @asesor.numero_inscripcion
    fill_in "Rut", with: @asesor.rut
    fill_in "Telefono", with: @asesor.telefono
    fill_in "Tipo representacion", with: @asesor.tipo_representacion
    click_on "Create Asesor"

    assert_text "Asesor was successfully created"
    click_on "Back"
  end

  test "updating a Asesor" do
    visit asesors_url
    click_on "Edit", match: :first

    fill_in "Apellido materno", with: @asesor.apellido_materno
    fill_in "Apellido paterno", with: @asesor.apellido_paterno
    fill_in "Email", with: @asesor.email
    fill_in "Explotacions", with: @asesor.explotacions_id
    fill_in "Nombre", with: @asesor.nombre
    fill_in "Numero inscripcion", with: @asesor.numero_inscripcion
    fill_in "Rut", with: @asesor.rut
    fill_in "Telefono", with: @asesor.telefono
    fill_in "Tipo representacion", with: @asesor.tipo_representacion
    click_on "Update Asesor"

    assert_text "Asesor was successfully updated"
    click_on "Back"
  end

  test "destroying a Asesor" do
    visit asesors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asesor was successfully destroyed"
  end
end

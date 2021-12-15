require "application_system_test_case"

class ExplotacionsTest < ApplicationSystemTestCase
  setup do
    @explotacion = explotacions(:one)
  end

  test "visiting the index" do
    visit explotacions_url
    assert_selector "h1", text: "Explotacions"
  end

  test "creating a Explotacion" do
    visit explotacions_url
    click_on "New Explotacion"

    fill_in "Comuna", with: @explotacion.comuna
    fill_in "Direccion", with: @explotacion.direccion
    fill_in "Email", with: @explotacion.email
    fill_in "Image", with: @explotacion.image
    fill_in "Localidad", with: @explotacion.localidad
    fill_in "Nacional", with: @explotacion.nacional
    fill_in "Nombre explotacion", with: @explotacion.nombre_explotacion
    fill_in "Pais", with: @explotacion.pais
    fill_in "Region", with: @explotacion.region
    fill_in "Rut", with: @explotacion.rut
    fill_in "Telefono", with: @explotacion.telefono
    fill_in "Thumbnail", with: @explotacion.thumbnail
    click_on "Create Explotacion"

    assert_text "Explotacion was successfully created"
    click_on "Back"
  end

  test "updating a Explotacion" do
    visit explotacions_url
    click_on "Edit", match: :first

    fill_in "Comuna", with: @explotacion.comuna
    fill_in "Direccion", with: @explotacion.direccion
    fill_in "Email", with: @explotacion.email
    fill_in "Image", with: @explotacion.image
    fill_in "Localidad", with: @explotacion.localidad
    fill_in "Nacional", with: @explotacion.nacional
    fill_in "Nombre explotacion", with: @explotacion.nombre_explotacion
    fill_in "Pais", with: @explotacion.pais
    fill_in "Region", with: @explotacion.region
    fill_in "Rut", with: @explotacion.rut
    fill_in "Telefono", with: @explotacion.telefono
    fill_in "Thumbnail", with: @explotacion.thumbnail
    click_on "Update Explotacion"

    assert_text "Explotacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Explotacion" do
    visit explotacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Explotacion was successfully destroyed"
  end
end

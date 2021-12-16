require "application_system_test_case"

class TipoMantencionsTest < ApplicationSystemTestCase
  setup do
    @tipo_mantencion = tipo_mantencions(:one)
  end

  test "visiting the index" do
    visit tipo_mantencions_url
    assert_selector "h1", text: "Tipo Mantencions"
  end

  test "creating a Tipo mantencion" do
    visit tipo_mantencions_url
    click_on "New Tipo Mantencion"

    fill_in "Nombre", with: @tipo_mantencion.nombre
    click_on "Create Tipo mantencion"

    assert_text "Tipo mantencion was successfully created"
    click_on "Back"
  end

  test "updating a Tipo mantencion" do
    visit tipo_mantencions_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @tipo_mantencion.nombre
    click_on "Update Tipo mantencion"

    assert_text "Tipo mantencion was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo mantencion" do
    visit tipo_mantencions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo mantencion was successfully destroyed"
  end
end

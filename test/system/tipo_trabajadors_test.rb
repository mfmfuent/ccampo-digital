require "application_system_test_case"

class TipoTrabajadorsTest < ApplicationSystemTestCase
  setup do
    @tipo_trabajador = tipo_trabajadors(:one)
  end

  test "visiting the index" do
    visit tipo_trabajadors_url
    assert_selector "h1", text: "Tipo Trabajadors"
  end

  test "creating a Tipo trabajador" do
    visit tipo_trabajadors_url
    click_on "New Tipo Trabajador"

    fill_in "Nombre", with: @tipo_trabajador.nombre
    click_on "Create Tipo trabajador"

    assert_text "Tipo trabajador was successfully created"
    click_on "Back"
  end

  test "updating a Tipo trabajador" do
    visit tipo_trabajadors_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @tipo_trabajador.nombre
    click_on "Update Tipo trabajador"

    assert_text "Tipo trabajador was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo trabajador" do
    visit tipo_trabajadors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo trabajador was successfully destroyed"
  end
end

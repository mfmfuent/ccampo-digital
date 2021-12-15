require "application_system_test_case"

class RepresentacionsTest < ApplicationSystemTestCase
  setup do
    @representacion = representacions(:one)
  end

  test "visiting the index" do
    visit representacions_url
    assert_selector "h1", text: "Representacions"
  end

  test "creating a Representacion" do
    visit representacions_url
    click_on "New Representacion"

    fill_in "Descripcion", with: @representacion.descripcion
    fill_in "Explotacions", with: @representacion.explotacions_id
    fill_in "Nombre", with: @representacion.nombre
    fill_in "Representantes", with: @representacion.representantes_id
    click_on "Create Representacion"

    assert_text "Representacion was successfully created"
    click_on "Back"
  end

  test "updating a Representacion" do
    visit representacions_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @representacion.descripcion
    fill_in "Explotacions", with: @representacion.explotacions_id
    fill_in "Nombre", with: @representacion.nombre
    fill_in "Representantes", with: @representacion.representantes_id
    click_on "Update Representacion"

    assert_text "Representacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Representacion" do
    visit representacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Representacion was successfully destroyed"
  end
end

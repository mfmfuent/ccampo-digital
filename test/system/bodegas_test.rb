require "application_system_test_case"

class BodegasTest < ApplicationSystemTestCase
  setup do
    @bodega = bodegas(:one)
  end

  test "visiting the index" do
    visit bodegas_url
    assert_selector "h1", text: "Bodegas"
  end

  test "creating a Bodega" do
    visit bodegas_url
    click_on "New Bodega"

    fill_in "Actividads", with: @bodega.actividads_id
    fill_in "Comuna", with: @bodega.comuna
    fill_in "Descripcion", with: @bodega.descripcion
    fill_in "Direccion", with: @bodega.direccion
    fill_in "Nombre", with: @bodega.nombre
    fill_in "Pais", with: @bodega.pais
    fill_in "Region", with: @bodega.region
    click_on "Create Bodega"

    assert_text "Bodega was successfully created"
    click_on "Back"
  end

  test "updating a Bodega" do
    visit bodegas_url
    click_on "Edit", match: :first

    fill_in "Actividads", with: @bodega.actividads_id
    fill_in "Comuna", with: @bodega.comuna
    fill_in "Descripcion", with: @bodega.descripcion
    fill_in "Direccion", with: @bodega.direccion
    fill_in "Nombre", with: @bodega.nombre
    fill_in "Pais", with: @bodega.pais
    fill_in "Region", with: @bodega.region
    click_on "Update Bodega"

    assert_text "Bodega was successfully updated"
    click_on "Back"
  end

  test "destroying a Bodega" do
    visit bodegas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bodega was successfully destroyed"
  end
end

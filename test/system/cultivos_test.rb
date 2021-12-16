require "application_system_test_case"

class CultivosTest < ApplicationSystemTestCase
  setup do
    @cultivo = cultivos(:one)
  end

  test "visiting the index" do
    visit cultivos_url
    assert_selector "h1", text: "Cultivos"
  end

  test "creating a Cultivo" do
    visit cultivos_url
    click_on "New Cultivo"

    fill_in "Actividads", with: @cultivo.actividads_id
    fill_in "Fitosanitarios", with: @cultivo.fitosanitarios_id
    fill_in "Nombre", with: @cultivo.nombre
    click_on "Create Cultivo"

    assert_text "Cultivo was successfully created"
    click_on "Back"
  end

  test "updating a Cultivo" do
    visit cultivos_url
    click_on "Edit", match: :first

    fill_in "Actividads", with: @cultivo.actividads_id
    fill_in "Fitosanitarios", with: @cultivo.fitosanitarios_id
    fill_in "Nombre", with: @cultivo.nombre
    click_on "Update Cultivo"

    assert_text "Cultivo was successfully updated"
    click_on "Back"
  end

  test "destroying a Cultivo" do
    visit cultivos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cultivo was successfully destroyed"
  end
end

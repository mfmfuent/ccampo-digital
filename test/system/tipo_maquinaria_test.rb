require "application_system_test_case"

class TipoMaquinariaTest < ApplicationSystemTestCase
  setup do
    @tipo_maquinarium = tipo_maquinaria(:one)
  end

  test "visiting the index" do
    visit tipo_maquinaria_url
    assert_selector "h1", text: "Tipo Maquinaria"
  end

  test "creating a Tipo maquinarium" do
    visit tipo_maquinaria_url
    click_on "New Tipo Maquinarium"

    fill_in "Descripcion", with: @tipo_maquinarium.descripcion
    fill_in "Maquinaria", with: @tipo_maquinarium.maquinaria_id
    fill_in "Nombre", with: @tipo_maquinarium.nombre
    click_on "Create Tipo maquinarium"

    assert_text "Tipo maquinarium was successfully created"
    click_on "Back"
  end

  test "updating a Tipo maquinarium" do
    visit tipo_maquinaria_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @tipo_maquinarium.descripcion
    fill_in "Maquinaria", with: @tipo_maquinarium.maquinaria_id
    fill_in "Nombre", with: @tipo_maquinarium.nombre
    click_on "Update Tipo maquinarium"

    assert_text "Tipo maquinarium was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo maquinarium" do
    visit tipo_maquinaria_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo maquinarium was successfully destroyed"
  end
end

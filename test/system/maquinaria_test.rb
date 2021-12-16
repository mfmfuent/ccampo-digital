require "application_system_test_case"

class MaquinariaTest < ApplicationSystemTestCase
  setup do
    @maquinarium = maquinaria(:one)
  end

  test "visiting the index" do
    visit maquinaria_url
    assert_selector "h1", text: "Maquinaria"
  end

  test "creating a Maquinarium" do
    visit maquinaria_url
    click_on "New Maquinarium"

    fill_in "Actividads", with: @maquinarium.actividads_id
    fill_in "Alquilada", with: @maquinarium.alquilada
    fill_in "Descripcion", with: @maquinarium.descripcion
    fill_in "Marca", with: @maquinarium.marca
    fill_in "Modelo", with: @maquinarium.modelo
    fill_in "Nombre", with: @maquinarium.nombre
    fill_in "Tipo maquinaria", with: @maquinarium.tipo_maquinaria
    click_on "Create Maquinarium"

    assert_text "Maquinarium was successfully created"
    click_on "Back"
  end

  test "updating a Maquinarium" do
    visit maquinaria_url
    click_on "Edit", match: :first

    fill_in "Actividads", with: @maquinarium.actividads_id
    fill_in "Alquilada", with: @maquinarium.alquilada
    fill_in "Descripcion", with: @maquinarium.descripcion
    fill_in "Marca", with: @maquinarium.marca
    fill_in "Modelo", with: @maquinarium.modelo
    fill_in "Nombre", with: @maquinarium.nombre
    fill_in "Tipo maquinaria", with: @maquinarium.tipo_maquinaria
    click_on "Update Maquinarium"

    assert_text "Maquinarium was successfully updated"
    click_on "Back"
  end

  test "destroying a Maquinarium" do
    visit maquinaria_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Maquinarium was successfully destroyed"
  end
end

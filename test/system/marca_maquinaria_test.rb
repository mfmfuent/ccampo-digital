require "application_system_test_case"

class MarcaMaquinariaTest < ApplicationSystemTestCase
  setup do
    @marca_maquinarium = marca_maquinaria(:one)
  end

  test "visiting the index" do
    visit marca_maquinaria_url
    assert_selector "h1", text: "Marca Maquinaria"
  end

  test "creating a Marca maquinarium" do
    visit marca_maquinaria_url
    click_on "New Marca Maquinarium"

    fill_in "Fecha fabricacion", with: @marca_maquinarium.fecha_fabricacion
    fill_in "Maquinaria", with: @marca_maquinarium.maquinaria_id
    fill_in "Marca", with: @marca_maquinarium.marca
    fill_in "Modelo", with: @marca_maquinarium.modelo
    click_on "Create Marca maquinarium"

    assert_text "Marca maquinarium was successfully created"
    click_on "Back"
  end

  test "updating a Marca maquinarium" do
    visit marca_maquinaria_url
    click_on "Edit", match: :first

    fill_in "Fecha fabricacion", with: @marca_maquinarium.fecha_fabricacion
    fill_in "Maquinaria", with: @marca_maquinarium.maquinaria_id
    fill_in "Marca", with: @marca_maquinarium.marca
    fill_in "Modelo", with: @marca_maquinarium.modelo
    click_on "Update Marca maquinarium"

    assert_text "Marca maquinarium was successfully updated"
    click_on "Back"
  end

  test "destroying a Marca maquinarium" do
    visit marca_maquinaria_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Marca maquinarium was successfully destroyed"
  end
end

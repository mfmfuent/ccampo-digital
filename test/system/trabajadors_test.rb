require "application_system_test_case"

class TrabajadorsTest < ApplicationSystemTestCase
  setup do
    @trabajador = trabajadors(:one)
  end

  test "visiting the index" do
    visit trabajadors_url
    assert_selector "h1", text: "Trabajadors"
  end

  test "creating a Trabajador" do
    visit trabajadors_url
    click_on "New Trabajador"

    fill_in "Actividads", with: @trabajador.actividads_id
    fill_in "Asesor", with: @trabajador.asesor
    fill_in "Calificacion", with: @trabajador.calificacion
    fill_in "Carnet aplicador", with: @trabajador.carnet_aplicador
    fill_in "Comentarios", with: @trabajador.comentarios
    fill_in "Comuna", with: @trabajador.comuna
    fill_in "Direccion", with: @trabajador.direccion
    fill_in "Email", with: @trabajador.email
    fill_in "Foto", with: @trabajador.foto
    fill_in "Localidad", with: @trabajador.localidad
    fill_in "Nombre", with: @trabajador.nombre
    fill_in "Pais", with: @trabajador.pais
    fill_in "Region", with: @trabajador.region
    fill_in "Rut", with: @trabajador.rut
    fill_in "Telefono", with: @trabajador.telefono
    fill_in "Tipo trabajador", with: @trabajador.tipo_trabajador
    fill_in "Tipo trabajadors", with: @trabajador.tipo_trabajadors_id
    click_on "Create Trabajador"

    assert_text "Trabajador was successfully created"
    click_on "Back"
  end

  test "updating a Trabajador" do
    visit trabajadors_url
    click_on "Edit", match: :first

    fill_in "Actividads", with: @trabajador.actividads_id
    fill_in "Asesor", with: @trabajador.asesor
    fill_in "Calificacion", with: @trabajador.calificacion
    fill_in "Carnet aplicador", with: @trabajador.carnet_aplicador
    fill_in "Comentarios", with: @trabajador.comentarios
    fill_in "Comuna", with: @trabajador.comuna
    fill_in "Direccion", with: @trabajador.direccion
    fill_in "Email", with: @trabajador.email
    fill_in "Foto", with: @trabajador.foto
    fill_in "Localidad", with: @trabajador.localidad
    fill_in "Nombre", with: @trabajador.nombre
    fill_in "Pais", with: @trabajador.pais
    fill_in "Region", with: @trabajador.region
    fill_in "Rut", with: @trabajador.rut
    fill_in "Telefono", with: @trabajador.telefono
    fill_in "Tipo trabajador", with: @trabajador.tipo_trabajador
    fill_in "Tipo trabajadors", with: @trabajador.tipo_trabajadors_id
    click_on "Update Trabajador"

    assert_text "Trabajador was successfully updated"
    click_on "Back"
  end

  test "destroying a Trabajador" do
    visit trabajadors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trabajador was successfully destroyed"
  end
end

require "application_system_test_case"

class ActividadParasTest < ApplicationSystemTestCase
  setup do
    @actividad_para = actividad_paras(:one)
  end

  test "visiting the index" do
    visit actividad_paras_url
    assert_selector "h1", text: "Actividad Paras"
  end

  test "creating a Actividad para" do
    visit actividad_paras_url
    click_on "New Actividad Para"

    fill_in "Actividads", with: @actividad_para.actividads_id
    fill_in "Nombre", with: @actividad_para.nombre
    click_on "Create Actividad para"

    assert_text "Actividad para was successfully created"
    click_on "Back"
  end

  test "updating a Actividad para" do
    visit actividad_paras_url
    click_on "Edit", match: :first

    fill_in "Actividads", with: @actividad_para.actividads_id
    fill_in "Nombre", with: @actividad_para.nombre
    click_on "Update Actividad para"

    assert_text "Actividad para was successfully updated"
    click_on "Back"
  end

  test "destroying a Actividad para" do
    visit actividad_paras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Actividad para was successfully destroyed"
  end
end

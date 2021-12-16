require "test_helper"

class MaquinariaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maquinarium = maquinaria(:one)
  end

  test "should get index" do
    get maquinaria_url
    assert_response :success
  end

  test "should get new" do
    get new_maquinarium_url
    assert_response :success
  end

  test "should create maquinarium" do
    assert_difference('Maquinarium.count') do
      post maquinaria_url, params: { maquinarium: { actividads_id: @maquinarium.actividads_id, alquilada: @maquinarium.alquilada, descripcion: @maquinarium.descripcion, marca: @maquinarium.marca, modelo: @maquinarium.modelo, nombre: @maquinarium.nombre, tipo_maquinaria: @maquinarium.tipo_maquinaria } }
    end

    assert_redirected_to maquinarium_url(Maquinarium.last)
  end

  test "should show maquinarium" do
    get maquinarium_url(@maquinarium)
    assert_response :success
  end

  test "should get edit" do
    get edit_maquinarium_url(@maquinarium)
    assert_response :success
  end

  test "should update maquinarium" do
    patch maquinarium_url(@maquinarium), params: { maquinarium: { actividads_id: @maquinarium.actividads_id, alquilada: @maquinarium.alquilada, descripcion: @maquinarium.descripcion, marca: @maquinarium.marca, modelo: @maquinarium.modelo, nombre: @maquinarium.nombre, tipo_maquinaria: @maquinarium.tipo_maquinaria } }
    assert_redirected_to maquinarium_url(@maquinarium)
  end

  test "should destroy maquinarium" do
    assert_difference('Maquinarium.count', -1) do
      delete maquinarium_url(@maquinarium)
    end

    assert_redirected_to maquinaria_url
  end
end

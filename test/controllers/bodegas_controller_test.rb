require "test_helper"

class BodegasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bodega = bodegas(:one)
  end

  test "should get index" do
    get bodegas_url
    assert_response :success
  end

  test "should get new" do
    get new_bodega_url
    assert_response :success
  end

  test "should create bodega" do
    assert_difference('Bodega.count') do
      post bodegas_url, params: { bodega: { actividads_id: @bodega.actividads_id, comuna: @bodega.comuna, descripcion: @bodega.descripcion, direccion: @bodega.direccion, nombre: @bodega.nombre, pais: @bodega.pais, region: @bodega.region } }
    end

    assert_redirected_to bodega_url(Bodega.last)
  end

  test "should show bodega" do
    get bodega_url(@bodega)
    assert_response :success
  end

  test "should get edit" do
    get edit_bodega_url(@bodega)
    assert_response :success
  end

  test "should update bodega" do
    patch bodega_url(@bodega), params: { bodega: { actividads_id: @bodega.actividads_id, comuna: @bodega.comuna, descripcion: @bodega.descripcion, direccion: @bodega.direccion, nombre: @bodega.nombre, pais: @bodega.pais, region: @bodega.region } }
    assert_redirected_to bodega_url(@bodega)
  end

  test "should destroy bodega" do
    assert_difference('Bodega.count', -1) do
      delete bodega_url(@bodega)
    end

    assert_redirected_to bodegas_url
  end
end

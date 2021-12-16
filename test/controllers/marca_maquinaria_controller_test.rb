require "test_helper"

class MarcaMaquinariaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marca_maquinarium = marca_maquinaria(:one)
  end

  test "should get index" do
    get marca_maquinaria_url
    assert_response :success
  end

  test "should get new" do
    get new_marca_maquinarium_url
    assert_response :success
  end

  test "should create marca_maquinarium" do
    assert_difference('MarcaMaquinarium.count') do
      post marca_maquinaria_url, params: { marca_maquinarium: { fecha_fabricacion: @marca_maquinarium.fecha_fabricacion, maquinaria_id: @marca_maquinarium.maquinaria_id, marca: @marca_maquinarium.marca, modelo: @marca_maquinarium.modelo } }
    end

    assert_redirected_to marca_maquinarium_url(MarcaMaquinarium.last)
  end

  test "should show marca_maquinarium" do
    get marca_maquinarium_url(@marca_maquinarium)
    assert_response :success
  end

  test "should get edit" do
    get edit_marca_maquinarium_url(@marca_maquinarium)
    assert_response :success
  end

  test "should update marca_maquinarium" do
    patch marca_maquinarium_url(@marca_maquinarium), params: { marca_maquinarium: { fecha_fabricacion: @marca_maquinarium.fecha_fabricacion, maquinaria_id: @marca_maquinarium.maquinaria_id, marca: @marca_maquinarium.marca, modelo: @marca_maquinarium.modelo } }
    assert_redirected_to marca_maquinarium_url(@marca_maquinarium)
  end

  test "should destroy marca_maquinarium" do
    assert_difference('MarcaMaquinarium.count', -1) do
      delete marca_maquinarium_url(@marca_maquinarium)
    end

    assert_redirected_to marca_maquinaria_url
  end
end

require "test_helper"

class CultivosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cultivo = cultivos(:one)
  end

  test "should get index" do
    get cultivos_url
    assert_response :success
  end

  test "should get new" do
    get new_cultivo_url
    assert_response :success
  end

  test "should create cultivo" do
    assert_difference('Cultivo.count') do
      post cultivos_url, params: { cultivo: { actividads_id: @cultivo.actividads_id, fitosanitarios_id: @cultivo.fitosanitarios_id, nombre: @cultivo.nombre } }
    end

    assert_redirected_to cultivo_url(Cultivo.last)
  end

  test "should show cultivo" do
    get cultivo_url(@cultivo)
    assert_response :success
  end

  test "should get edit" do
    get edit_cultivo_url(@cultivo)
    assert_response :success
  end

  test "should update cultivo" do
    patch cultivo_url(@cultivo), params: { cultivo: { actividads_id: @cultivo.actividads_id, fitosanitarios_id: @cultivo.fitosanitarios_id, nombre: @cultivo.nombre } }
    assert_redirected_to cultivo_url(@cultivo)
  end

  test "should destroy cultivo" do
    assert_difference('Cultivo.count', -1) do
      delete cultivo_url(@cultivo)
    end

    assert_redirected_to cultivos_url
  end
end

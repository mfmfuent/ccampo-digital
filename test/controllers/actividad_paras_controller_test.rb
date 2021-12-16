require "test_helper"

class ActividadParasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actividad_para = actividad_paras(:one)
  end

  test "should get index" do
    get actividad_paras_url
    assert_response :success
  end

  test "should get new" do
    get new_actividad_para_url
    assert_response :success
  end

  test "should create actividad_para" do
    assert_difference('ActividadPara.count') do
      post actividad_paras_url, params: { actividad_para: { actividads_id: @actividad_para.actividads_id, nombre: @actividad_para.nombre } }
    end

    assert_redirected_to actividad_para_url(ActividadPara.last)
  end

  test "should show actividad_para" do
    get actividad_para_url(@actividad_para)
    assert_response :success
  end

  test "should get edit" do
    get edit_actividad_para_url(@actividad_para)
    assert_response :success
  end

  test "should update actividad_para" do
    patch actividad_para_url(@actividad_para), params: { actividad_para: { actividads_id: @actividad_para.actividads_id, nombre: @actividad_para.nombre } }
    assert_redirected_to actividad_para_url(@actividad_para)
  end

  test "should destroy actividad_para" do
    assert_difference('ActividadPara.count', -1) do
      delete actividad_para_url(@actividad_para)
    end

    assert_redirected_to actividad_paras_url
  end
end

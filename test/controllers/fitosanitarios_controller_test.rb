require "test_helper"

class FitosanitariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fitosanitario = fitosanitarios(:one)
  end

  test "should get index" do
    get fitosanitarios_url
    assert_response :success
  end

  test "should get new" do
    get new_fitosanitario_url
    assert_response :success
  end

  test "should create fitosanitario" do
    assert_difference('Fitosanitario.count') do
      post fitosanitarios_url, params: { fitosanitario: { actividads_id: @fitosanitario.actividads_id, ambito_utilizacion: @fitosanitario.ambito_utilizacion, cultivo: @fitosanitario.cultivo, dosis: @fitosanitario.dosis, fabricante: @fitosanitario.fabricante, fecha_caducidad: @fitosanitario.fecha_caducidad, ficha_tecnica: @fitosanitario.ficha_tecnica, funcion: @fitosanitario.funcion, litros_caldo_defecto: @fitosanitario.litros_caldo_defecto, nombre: @fitosanitario.nombre, periodo_seguridad: @fitosanitario.periodo_seguridad, registro: @fitosanitario.registro, unidades: @fitosanitario.unidades, unidades_dosis: @fitosanitario.unidades_dosis } }
    end

    assert_redirected_to fitosanitario_url(Fitosanitario.last)
  end

  test "should show fitosanitario" do
    get fitosanitario_url(@fitosanitario)
    assert_response :success
  end

  test "should get edit" do
    get edit_fitosanitario_url(@fitosanitario)
    assert_response :success
  end

  test "should update fitosanitario" do
    patch fitosanitario_url(@fitosanitario), params: { fitosanitario: { actividads_id: @fitosanitario.actividads_id, ambito_utilizacion: @fitosanitario.ambito_utilizacion, cultivo: @fitosanitario.cultivo, dosis: @fitosanitario.dosis, fabricante: @fitosanitario.fabricante, fecha_caducidad: @fitosanitario.fecha_caducidad, ficha_tecnica: @fitosanitario.ficha_tecnica, funcion: @fitosanitario.funcion, litros_caldo_defecto: @fitosanitario.litros_caldo_defecto, nombre: @fitosanitario.nombre, periodo_seguridad: @fitosanitario.periodo_seguridad, registro: @fitosanitario.registro, unidades: @fitosanitario.unidades, unidades_dosis: @fitosanitario.unidades_dosis } }
    assert_redirected_to fitosanitario_url(@fitosanitario)
  end

  test "should destroy fitosanitario" do
    assert_difference('Fitosanitario.count', -1) do
      delete fitosanitario_url(@fitosanitario)
    end

    assert_redirected_to fitosanitarios_url
  end
end

require 'test_helper'

class MultasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @multa = multas(:one)
  end

  test "should get index" do
    get multas_url
    assert_response :success
  end

  test "should get new" do
    get new_multa_url
    assert_response :success
  end

  test "should create multa" do
    assert_difference('Multa.count') do
      post multas_url, params: { multa: { Prestamo_id: @multa.Prestamo_id, estado: @multa.estado, fecha: @multa.fecha, valor: @multa.valor } }
    end

    assert_redirected_to multa_url(Multa.last)
  end

  test "should show multa" do
    get multa_url(@multa)
    assert_response :success
  end

  test "should get edit" do
    get edit_multa_url(@multa)
    assert_response :success
  end

  test "should update multa" do
    patch multa_url(@multa), params: { multa: { Prestamo_id: @multa.Prestamo_id, estado: @multa.estado, fecha: @multa.fecha, valor: @multa.valor } }
    assert_redirected_to multa_url(@multa)
  end

  test "should destroy multa" do
    assert_difference('Multa.count', -1) do
      delete multa_url(@multa)
    end

    assert_redirected_to multas_url
  end
end

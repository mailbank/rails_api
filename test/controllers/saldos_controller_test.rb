require 'test_helper'

class SaldosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saldo = saldos(:one)
  end

  test "should get index" do
    get saldos_url, as: :json
    assert_response :success
  end

  test "should create saldo" do
    assert_difference('Saldo.count') do
      post saldos_url, params: { saldo: { user_id: @saldo.user_id, valor: @saldo.valor } }, as: :json
    end

    assert_response 201
  end

  test "should show saldo" do
    get saldo_url(@saldo), as: :json
    assert_response :success
  end

  test "should update saldo" do
    patch saldo_url(@saldo), params: { saldo: { user_id: @saldo.user_id, valor: @saldo.valor } }, as: :json
    assert_response 200
  end

  test "should destroy saldo" do
    assert_difference('Saldo.count', -1) do
      delete saldo_url(@saldo), as: :json
    end

    assert_response 204
  end
end

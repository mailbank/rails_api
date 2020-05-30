require 'test_helper'

class Api::V1::PessoasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_pessoa = api_v1_pessoas(:one)
  end

  test "should get index" do
    get api_v1_pessoas_url, as: :json
    assert_response :success
  end

  test "should create api_v1_pessoa" do
    assert_difference('Api::V1::Pessoa.count') do
      post api_v1_pessoas_url, params: { api_v1_pessoa: { birth: @api_v1_pessoa.birth, cpf: @api_v1_pessoa.cpf, name: @api_v1_pessoa.name, rg: @api_v1_pessoa.rg, tel: @api_v1_pessoa.tel, user_id: @api_v1_pessoa.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_pessoa" do
    get api_v1_pessoa_url(@api_v1_pessoa), as: :json
    assert_response :success
  end

  test "should update api_v1_pessoa" do
    patch api_v1_pessoa_url(@api_v1_pessoa), params: { api_v1_pessoa: { birth: @api_v1_pessoa.birth, cpf: @api_v1_pessoa.cpf, name: @api_v1_pessoa.name, rg: @api_v1_pessoa.rg, tel: @api_v1_pessoa.tel, user_id: @api_v1_pessoa.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_pessoa" do
    assert_difference('Api::V1::Pessoa.count', -1) do
      delete api_v1_pessoa_url(@api_v1_pessoa), as: :json
    end

    assert_response 204
  end
end

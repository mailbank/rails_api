class Api::V1::PessoasController < ApplicationController
  before_action :set_api_v1_pessoa, only: [:show, :update, :destroy]
  before_action :require_authorization!, only: [:show, :update, :destroy]

  # GET /api/v1/pessoas
  def index
    @api_v1_pessoas = Api::V1::Pessoa.all

    render json: @api_v1_pessoas
  end

  # GET /api/v1/pessoas/1
  def show
    render json: @api_v1_pessoa
  end

  # POST /api/v1/pessoas
  def create
    @api_v1_pessoa = Api::V1::Pessoa.new(api_v1_pessoa_params.merge(user: current_user))

    if @api_v1_pessoa.save
      render json: @api_v1_pessoa, status: :created, location: @api_v1_pessoa
    else
      render json: @api_v1_pessoa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/pessoas/1
  def update
    if @api_v1_pessoa.update(api_v1_pessoa_params)
      render json: @api_v1_pessoa
    else
      render json: @api_v1_pessoa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/pessoas/1
  def destroy
    @api_v1_pessoa.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_pessoa
      @api_v1_pessoa = Api::V1::Pessoa.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def api_v1_pessoa_params
      params.permit(:name, :birth, :cpf, :rg, :tel, :user_id)
    end

  def require_authorization!
    unless current_user == @api_v1_pessoa.user
      render json: {}, status: :forbidden
    end
  end
end

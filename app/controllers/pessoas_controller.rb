class PessoasController < ApplicationController
  before_action :set_pessoa, only: [:show, :update, :destroy]

  # GET /pessoas
  def index
    @pessoas = Pessoa.all

    render json: @pessoas
  end

  # GET /pessoas/1
  def show
    render json: @pessoa
  end

  # POST /pessoas
  def create
    @pessoa = Pessoa.new(pessoa_params)

    if @pessoa.save
      render json: @pessoa, status: :created, location: @pessoa
    else
      render json: @pessoa.errors, status: :unprocessable_entity
    end
  end


  # PATCH/PUT /pessoas/1
  def update
    if @pessoa.update(pessoa_params)
      render json: @pessoa
    else
      render json: @pessoa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pessoas/1
  def destroy
    @pessoa.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoa
      @pessoa = Pessoa.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pessoa_params
      params.require(:pessoa).permit(:nome, :nasc, :cpf, :rg, :telefone, :CEP, :cidade, :estado, :rua, :bairro, :user_id)
    end
end

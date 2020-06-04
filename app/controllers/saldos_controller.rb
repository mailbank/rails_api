class SaldosController < ApplicationController
  before_action :set_saldo, only: [:show, :update, :destroy]

  # GET /saldos
  def index
    @saldos = Saldo.all

    render json: @saldos
  end

  # GET /saldos/1
  def show
    render json: @saldo
  end

  # POST /saldos
  def create
    @saldo = Saldo.new(saldo_params)

    if @saldo.save
      render json: @saldo, status: :created, location: @saldo
    else
      render json: @saldo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /saldos/1
  def update
    if @saldo.update(saldo_params)
      render json: @saldo
    else
      render json: @saldo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /saldos/1
  def destroy
    @saldo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saldo
      @saldo = Saldo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def saldo_params
      params.require(:saldo).permit(:valor, :user_id)
    end
end

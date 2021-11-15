class MultasController < ApplicationController
  before_action :set_multa, only: %i[ show edit update destroy ]

  # GET /multas or /multas.json
  def index
    @multas = Multa.all
  end

  # GET /multas/1 or /multas/1.json
  def show
  end

  # GET /multas/new
  def new
    @multa = Multa.new
  end

  # GET /multas/1/edit
  def edit
  end

  # POST /multas or /multas.json
  def create
    @multa = Multa.new(multa_params)

    respond_to do |format|
      if @multa.save
        format.html { redirect_to @multa, notice: "Multa was successfully created." }
        format.json { render :show, status: :created, location: @multa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @multa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /multas/1 or /multas/1.json
  def update
    respond_to do |format|
      if @multa.update(multa_params)
        format.html { redirect_to @multa, notice: "Multa was successfully updated." }
        format.json { render :show, status: :ok, location: @multa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @multa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /multas/1 or /multas/1.json
  def destroy
    @multa.destroy
    respond_to do |format|
      format.html { redirect_to multas_url, notice: "Multa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_multa
      @multa = Multa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def multa_params
      params.require(:multa).permit(:valor, :fecha, :estado, :Prestamo_id)
    end
end

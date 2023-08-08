class CategsController < ApplicationController
  before_action :set_categ, only: %i[ show edit update destroy ]

  # GET /categs or /categs.json
  def index
    @categs = Categ.all
  end

  # GET /categs/1 or /categs/1.json
  def show
  end

  # GET /categs/new
  def new
    @categ = Categ.new
  end

  # GET /categs/1/edit
  def edit
  end

  # POST /categs or /categs.json
  def create
    @categ = Categ.new(categ_params)

    respond_to do |format|
      if @categ.save
        format.html { redirect_to categ_url(@categ), notice: "Categ was successfully created." }
        format.json { render :show, status: :created, location: @categ }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categ.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categs/1 or /categs/1.json
  def update
    respond_to do |format|
      if @categ.update(categ_params)
        format.html { redirect_to categ_url(@categ), notice: "Categ was successfully updated." }
        format.json { render :show, status: :ok, location: @categ }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categ.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categs/1 or /categs/1.json
  def destroy
    @categ.destroy

    respond_to do |format|
      format.html { redirect_to categs_url, notice: "Categ was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categ
      @categ = Categ.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categ_params
      params.require(:categ).permit(:category)
    end
end

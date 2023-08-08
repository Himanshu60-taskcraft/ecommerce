class ShopkeeperCategoriesController < ApplicationController
  before_action :set_shopkeeper_category, only: %i[ show edit update destroy ]

  # GET /shopkeeper_categories or /shopkeeper_categories.json
  def index
    @shopkeeper_categories = ShopkeeperCategory.all
  end

  # GET /shopkeeper_categories/1 or /shopkeeper_categories/1.json
  def show
    # byebug
      # @shopkeeper_categorys = ShopkeeperCategory.find(params[:id])
  end

  # GET /shopkeeper_categories/new
  def new
    @shopkeeper_category = ShopkeeperCategory.new
  end

  # GET /shopkeeper_categories/1/edit
  def edit
  end

  # POST /shopkeeper_categories or /shopkeeper_categories.json
  def create
    @shopkeeper_category = ShopkeeperCategory.new(shopkeeper_category_params)
    respond_to do |format|
      if @shopkeeper_category.save
        format.html { redirect_to shopkeeper_category_url(@shopkeeper_category), notice: "Shopkeeper category was successfully created." }
        format.json { render :show, status: :created, location: @shopkeeper_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shopkeeper_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopkeeper_categories/1 or /shopkeeper_categories/1.json
  def update
    respond_to do |format|
      if @shopkeeper_category.update(shopkeeper_category_params)
        format.html { redirect_to shopkeeper_category_url(@shopkeeper_category), notice: "Shopkeeper category was successfully updated." }
        format.json { render :show, status: :ok, location: @shopkeeper_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shopkeeper_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopkeeper_categories/1 or /shopkeeper_categories/1.json
  def destroy
    @shopkeeper_category.destroy

    respond_to do |format|
      format.html { redirect_to shopkeeper_categories_url, notice: "Shopkeeper category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopkeeper_category
      @shopkeeper_category = ShopkeeperCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shopkeeper_category_params
      params.require(:shopkeeper_category).permit(:category)
    end
end

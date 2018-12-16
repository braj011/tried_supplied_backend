class SupplierProducesController < ApplicationController
  before_action :set_supplier_produce, only: [:show, :edit, :update, :destroy]

  # GET /supplier_produces
  # GET /supplier_produces.json
  def index
    @supplier_produces = SupplierProduce.all
    # byebug
    render json:   @supplier_produces
    # { supplier: @supplier_produces.suppliers, produce: @supplier_produces.produces, season: @supplier_produces.season  }
  end

  def show_produce_by_season
    @supplier_produces = SupplierProduce.where(season: params[:season])
    @produce = Produce.find(@supplier_produces.map {|supp_prod| supp_prod.produce_id })
    # byebug
    @supplier = Supplier.find(@supplier_produces.map {|supp_prod| supp_prod.supplier_id })
    render json: [@produce, @supplier, @supplier_produces]
  end 

  # GET /supplier_produces/1
  # GET /supplier_produces/1.json
  def show
  end

  # GET /supplier_produces/new
  def new
    @supplier_produce = SupplierProduce.new
  end

  # GET /supplier_produces/1/edit
  def edit
  end

  # POST /supplier_produces
  # POST /supplier_produces.json
  def create
    @supplier_produce = SupplierProduce.new(supplier_produce_params)

    respond_to do |format|
      if @supplier_produce.save
        format.html { redirect_to @supplier_produce, notice: 'Supplier produce was successfully created.' }
        format.json { render :show, status: :created, location: @supplier_produce }
      else
        format.html { render :new }
        format.json { render json: @supplier_produce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supplier_produces/1
  # PATCH/PUT /supplier_produces/1.json
  def update
    respond_to do |format|
      if @supplier_produce.update(supplier_produce_params)
        format.html { redirect_to @supplier_produce, notice: 'Supplier produce was successfully updated.' }
        format.json { render :show, status: :ok, location: @supplier_produce }
      else
        format.html { render :edit }
        format.json { render json: @supplier_produce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplier_produces/1
  # DELETE /supplier_produces/1.json
  def destroy
    @supplier_produce.destroy
    respond_to do |format|
      format.html { redirect_to supplier_produces_url, notice: 'Supplier produce was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_supplier_produce
#       @supplier_produce = SupplierProduce.find(params[:id])
#     end

#     # Never trust parameters from the scary internet, only allow the white list through.
#     def supplier_produce_params
#       params.fetch(:supplier_produce, {})
#     end

end

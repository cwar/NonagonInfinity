class FootnoteSymbolsController < ApplicationController
  before_action :set_footnote_symbol, only: %i[ show edit update destroy ]

  # GET /footnote_symbols or /footnote_symbols.json
  def index
    @footnote_symbols = FootnoteSymbol.all
  end

  # GET /footnote_symbols/1 or /footnote_symbols/1.json
  def show
  end

  # GET /footnote_symbols/new
  def new
    @footnote_symbol = FootnoteSymbol.new
  end

  # GET /footnote_symbols/1/edit
  def edit
  end

  # POST /footnote_symbols or /footnote_symbols.json
  def create
    @footnote_symbol = FootnoteSymbol.new(footnote_symbol_params)

    respond_to do |format|
      if @footnote_symbol.save
        format.html { redirect_to footnote_symbol_url(@footnote_symbol), notice: "Footnote symbol was successfully created." }
        format.json { render :show, status: :created, location: @footnote_symbol }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @footnote_symbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /footnote_symbols/1 or /footnote_symbols/1.json
  def update
    respond_to do |format|
      if @footnote_symbol.update(footnote_symbol_params)
        format.html { redirect_to footnote_symbol_url(@footnote_symbol), notice: "Footnote symbol was successfully updated." }
        format.json { render :show, status: :ok, location: @footnote_symbol }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @footnote_symbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /footnote_symbols/1 or /footnote_symbols/1.json
  def destroy
    @footnote_symbol.destroy!

    respond_to do |format|
      format.html { redirect_to footnote_symbols_url, notice: "Footnote symbol was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_footnote_symbol
      @footnote_symbol = FootnoteSymbol.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def footnote_symbol_params
      params.require(:footnote_symbol).permit(:footnote_number, :symbol, :sane_value)
    end
end

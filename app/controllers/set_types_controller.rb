class SetTypesController < ApplicationController
  before_action :set_set_type, only: %i[ show edit update destroy ]

  # GET /set_types or /set_types.json
  def index
    @set_types = SetType.all
  end

  # GET /set_types/1 or /set_types/1.json
  def show
  end

  # GET /set_types/new
  def new
    @set_type = SetType.new
  end

  # GET /set_types/1/edit
  def edit
  end

  # POST /set_types or /set_types.json
  def create
    @set_type = SetType.new(set_type_params)

    respond_to do |format|
      if @set_type.save
        format.html { redirect_to set_type_url(@set_type), notice: "Set type was successfully created." }
        format.json { render :show, status: :created, location: @set_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @set_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /set_types/1 or /set_types/1.json
  def update
    respond_to do |format|
      if @set_type.update(set_type_params)
        format.html { redirect_to set_type_url(@set_type), notice: "Set type was successfully updated." }
        format.json { render :show, status: :ok, location: @set_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @set_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /set_types/1 or /set_types/1.json
  def destroy
    @set_type.destroy!

    respond_to do |format|
      format.html { redirect_to set_types_url, notice: "Set type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_set_type
      @set_type = SetType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def set_type_params
      params.require(:set_type).permit(:settype)
    end
end

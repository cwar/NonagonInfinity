class BandmembersController < ApplicationController
  before_action :set_bandmember, only: %i[ show edit update destroy ]

  # GET /bandmembers or /bandmembers.json
  def index
    @bandmembers = Bandmember.all
  end

  # GET /bandmembers/1 or /bandmembers/1.json
  def show
  end

  # GET /bandmembers/new
  def new
    @bandmember = Bandmember.new
  end

  # GET /bandmembers/1/edit
  def edit
  end

  # POST /bandmembers or /bandmembers.json
  def create
    @bandmember = Bandmember.new(bandmember_params)

    respond_to do |format|
      if @bandmember.save
        format.html { redirect_to bandmember_url(@bandmember), notice: "Bandmember was successfully created." }
        format.json { render :show, status: :created, location: @bandmember }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bandmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bandmembers/1 or /bandmembers/1.json
  def update
    respond_to do |format|
      if @bandmember.update(bandmember_params)
        format.html { redirect_to bandmember_url(@bandmember), notice: "Bandmember was successfully updated." }
        format.json { render :show, status: :ok, location: @bandmember }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bandmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bandmembers/1 or /bandmembers/1.json
  def destroy
    @bandmember.destroy!

    respond_to do |format|
      format.html { redirect_to bandmembers_url, notice: "Bandmember was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bandmember
      @bandmember = Bandmember.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bandmember_params
      params.require(:bandmember).permit(:artist_id, :people_id, :role)
    end
end

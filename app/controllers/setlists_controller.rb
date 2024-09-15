class SetlistsController < ApplicationController
  before_action :set_setlist, only: %i[ show edit update destroy ]

  # GET /setlists or /setlists.json
  def index
    @setlists = Setlist.all
  end

  # GET /setlists/1 or /setlists/1.json
  def show
  end

  # GET /setlists/new
  def new
    @setlist = Setlist.new
  end

  # GET /setlists/1/edit
  def edit
  end

  # POST /setlists or /setlists.json
  def create
    @setlist = Setlist.new(setlist_params)

    respond_to do |format|
      if @setlist.save
        format.html { redirect_to setlist_url(@setlist), notice: "Setlist was successfully created." }
        format.json { render :show, status: :created, location: @setlist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @setlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /setlists/1 or /setlists/1.json
  def update
    respond_to do |format|
      if @setlist.update(setlist_params)
        format.html { redirect_to setlist_url(@setlist), notice: "Setlist was successfully updated." }
        format.json { render :show, status: :ok, location: @setlist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @setlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /setlists/1 or /setlists/1.json
  def destroy
    @setlist.destroy!

    respond_to do |format|
      format.html { redirect_to setlists_url, notice: "Setlist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setlist
      @setlist = Setlist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def setlist_params
      params.require(:setlist).permit(:show_id, :song_id, :displayname, :setnumber, :position, :transition_id, :footnote, :tracktime, :isjam, :isreprise, :uniqueid, :isjamchart, :jamchartnote)
    end
end

class SetlistItemsController < ApplicationController
  before_action :set_setlist_item, only: %i[ show edit update destroy ]

  # GET /setlist_items or /setlist_items.json
  def index
    @setlist_items = SetlistItem.all
  end

  # GET /setlist_items/1 or /setlist_items/1.json
  def show
  end

  # GET /setlist_items/new
  def new
    @setlist_item = SetlistItem.new
  end

  # GET /setlist_items/1/edit
  def edit
  end

  # POST /setlist_items or /setlist_items.json
  def create
    @setlist_item = SetlistItem.new(setlist_item_params)

    respond_to do |format|
      if @setlist_item.save
        format.html { redirect_to setlist_item_url(@setlist_item), notice: "Setlist item was successfully created." }
        format.json { render :show, status: :created, location: @setlist_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @setlist_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /setlist_items/1 or /setlist_items/1.json
  def update
    respond_to do |format|
      if @setlist_item.update(setlist_item_params)
        format.html { redirect_to setlist_item_url(@setlist_item), notice: "Setlist item was successfully updated." }
        format.json { render :show, status: :ok, location: @setlist_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @setlist_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /setlist_items/1 or /setlist_items/1.json
  def destroy
    @setlist_item.destroy!

    respond_to do |format|
      format.html { redirect_to setlist_items_url, notice: "Setlist item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setlist_item
      @setlist_item = SetlistItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def setlist_item_params
      params.require(:setlist_item).permit(:setlist_id, :song_id, :position)
    end
end

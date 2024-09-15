class TransitionsController < ApplicationController
  before_action :set_transition, only: %i[ show edit update destroy ]

  # GET /transitions or /transitions.json
  def index
    @transitions = Transition.all
  end

  # GET /transitions/1 or /transitions/1.json
  def show
  end

  # GET /transitions/new
  def new
    @transition = Transition.new
  end

  # GET /transitions/1/edit
  def edit
  end

  # POST /transitions or /transitions.json
  def create
    @transition = Transition.new(transition_params)

    respond_to do |format|
      if @transition.save
        format.html { redirect_to transition_url(@transition), notice: "Transition was successfully created." }
        format.json { render :show, status: :created, location: @transition }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transitions/1 or /transitions/1.json
  def update
    respond_to do |format|
      if @transition.update(transition_params)
        format.html { redirect_to transition_url(@transition), notice: "Transition was successfully updated." }
        format.json { render :show, status: :ok, location: @transition }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transitions/1 or /transitions/1.json
  def destroy
    @transition.destroy!

    respond_to do |format|
      format.html { redirect_to transitions_url, notice: "Transition was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transition
      @transition = Transition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transition_params
      params.require(:transition).permit(:transition, :dropdown, :default_transition, :desc, :updated_at)
    end
end

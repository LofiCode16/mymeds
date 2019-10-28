class MedicsController < ApplicationController
  before_action :set_medic, only: [:show, :edit, :update, :destroy]

  # GET /medics
  # GET /medics.json
  def index
    @medics = Medic.all
  end

  # GET /medics/1
  # GET /medics/1.json
  def show
  end

  # GET /medics/new
  def new
    @medic = Medic.new
  end

  # GET /medics/1/edit
  def edit
  end

  # POST /medics
  # POST /medics.json
  def create
    @medic = Medic.new(medic_params)
    @medic.user_id = current_user.id

    respond_to do |format|
      if @medic.save
        format.html { redirect_to @medic, notice: 'Medic was successfully created.' }
        format.json { render :show, status: :created, location: @medic }
        format.js { redirect_to root_path, notice: 'Medic added!'}
      else
        format.html { render :new }
        format.json { render json: @medic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medics/1
  # PATCH/PUT /medics/1.json
  def update
    respond_to do |format|
      if @medic.update(medic_params)
        format.html { redirect_to @medic, notice: 'Medic was successfully updated.' }
        format.json { render :show, status: :ok, location: @medic }
        format.js { redirect_to root_path, notice: 'Medic updated!' }
      else
        format.html { render :edit }
        format.json { render json: @medic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medics/1
  # DELETE /medics/1.json
  def destroy
    @medic.destroy
    respond_to do |format|
      format.html { redirect_to medics_url, notice: 'Medic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medic
      @medic = Medic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medic_params
      params.require(:medic).permit(:rut, :name, :speciality)
    end
end

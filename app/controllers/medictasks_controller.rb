class MedictasksController < ApplicationController
  before_action :set_medictask, only: [:show, :edit, :update, :destroy]

  # GET /medictasks
  # GET /medictasks.json
  def index
    @medictasks = Medictask.where(user_id: current_user.id)
  end

  # GET /medictasks/1
  # GET /medictasks/1.json
  def show
  end

  # GET /medictasks/new
  def new
    @medictask = Medictask.new
  end

  # GET /medictasks/1/edit
  def edit
  end

  # POST /medictasks
  # POST /medictasks.json
  def create
    @medictask = Medictask.new(medictask_params)
    @medictask.user_id = current_user.id

    respond_to do |format|
      if @medictask.save
        format.html { redirect_to @medictask, notice: 'Medictask was successfully created.' }
        format.json { render :show, status: :created, location: @medictask }
      else
        format.html { render :new }
        format.json { render json: @medictask.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medictasks/1
  # PATCH/PUT /medictasks/1.json
  def update
    respond_to do |format|
      if @medictask.update(medictask_params)
        format.html { redirect_to @medictask, notice: 'Medictask was successfully updated.' }
        format.json { render :show, status: :ok, location: @medictask }
      else
        format.html { render :edit }
        format.json { render json: @medictask.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medictasks/1
  # DELETE /medictasks/1.json
  def destroy
    @medictask.destroy
    respond_to do |format|
      format.html { redirect_to medictasks_url, notice: 'Medictask was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medictask
      @medictask = Medictask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medictask_params
      params.require(:medictask).permit(:title, :content, :date, :medic, :speciality, :done, :user_id)
    end
end

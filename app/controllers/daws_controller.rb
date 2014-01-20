class DawsController < ApplicationController
  before_action :set_daw, only: [:show, :edit, :update, :destroy]

  # GET /daws
  # GET /daws.json
  def index
    @daws = Daw.all
  end

  # GET /daws/1
  # GET /daws/1.json
  def show
  end

  # GET /daws/new
  def new
    @daw = Daw.new
  end

  # GET /daws/1/edit
  def edit
  end

  # POST /daws
  # POST /daws.json
  def create
    @daw = Daw.new(daw_params)

    respond_to do |format|
      if @daw.save
        format.html { redirect_to @daw, notice: 'Daw was successfully created.' }
        format.json { render action: 'show', status: :created, location: @daw }
      else
        format.html { render action: 'new' }
        format.json { render json: @daw.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daws/1
  # PATCH/PUT /daws/1.json
  def update
    respond_to do |format|
      if @daw.update(daw_params)
        format.html { redirect_to @daw, notice: 'Daw was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @daw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daws/1
  # DELETE /daws/1.json
  def destroy
    @daw.destroy
    respond_to do |format|
      format.html { redirect_to daws_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw
      @daw = Daw.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_params
      params[:daw]
    end
end

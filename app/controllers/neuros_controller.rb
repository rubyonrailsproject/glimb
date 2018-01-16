class NeurosController < ApplicationController
  before_action :set_neuro, only: [:show, :edit, :update, :destroy]

  # GET /neuros
  # GET /neuros.json
  def index
    @neuros = Neuro.all
  end

  # GET /neuros/1
  # GET /neuros/1.json
  def show
  end

  # GET /neuros/new
  def new
    @neuro = Neuro.new
  end

  # GET /neuros/1/edit
  def edit
  end

  # POST /neuros
  # POST /neuros.json
  def create
    @neuro = Neuro.new(neuro_params)

    respond_to do |format|
      if @neuro.save
        format.html { redirect_to @neuro, notice: 'Neuro was successfully created.' }
        format.json { render :show, status: :created, location: @neuro }
      else
        format.html { render :new }
        format.json { render json: @neuro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /neuros/1
  # PATCH/PUT /neuros/1.json
  def update
    respond_to do |format|
      if @neuro.update(neuro_params)
        format.html { redirect_to @neuro, notice: 'Neuro was successfully updated.' }
        format.json { render :show, status: :ok, location: @neuro }
      else
        format.html { render :edit }
        format.json { render json: @neuro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /neuros/1
  # DELETE /neuros/1.json
  def destroy
    @neuro.destroy
    respond_to do |format|
      format.html { redirect_to neuros_url, notice: 'Neuro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_neuro
      @neuro = Neuro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def neuro_params
      params.require(:neuro).permit(:result1, :result2, :playername)
    end
end

class BootstrapingsController < ApplicationController
  before_action :set_bootstraping, only: [:show, :edit, :update, :destroy]

  # GET /bootstrapings
  # GET /bootstrapings.json
  def index
    @bootstrapings = Bootstraping.all
  end

  # GET /bootstrapings/1
  # GET /bootstrapings/1.json
  def show
  end

  # GET /bootstrapings/new
  def new
    @bootstraping = Bootstraping.new
  end

  # GET /bootstrapings/1/edit
  def edit
  end

  # POST /bootstrapings
  # POST /bootstrapings.json
  def create
    @bootstraping = Bootstraping.new(bootstraping_params)

    respond_to do |format|
      if @bootstraping.save
        format.html { redirect_to @bootstraping, notice: 'Bootstraping was successfully created.' }
        format.json { render :show, status: :created, location: @bootstraping }
      else
        format.html { render :new }
        format.json { render json: @bootstraping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bootstrapings/1
  # PATCH/PUT /bootstrapings/1.json
  def update
    respond_to do |format|
      if @bootstraping.update(bootstraping_params)
        format.html { redirect_to @bootstraping, notice: 'Bootstraping was successfully updated.' }
        format.json { render :show, status: :ok, location: @bootstraping }
      else
        format.html { render :edit }
        format.json { render json: @bootstraping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bootstrapings/1
  # DELETE /bootstrapings/1.json
  def destroy
    @bootstraping.destroy
    respond_to do |format|
      format.html { redirect_to bootstrapings_url, notice: 'Bootstraping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bootstraping
      @bootstraping = Bootstraping.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bootstraping_params
      params.require(:bootstraping).permit(:title, :code)
    end
end

class CssesController < ApplicationController
  before_action :set_css, only: [:show, :edit, :update, :destroy]

  # GET /csses
  # GET /csses.json
  def index
    @csses = Css.all
  end

  # GET /csses/1
  # GET /csses/1.json
  def show
  end

  # GET /csses/new
  def new
    @css = Css.new
  end

  # GET /csses/1/edit
  def edit
  end

  # POST /csses
  # POST /csses.json
  def create
    @css = Css.new(css_params)

    respond_to do |format|
      if @css.save
        format.html { redirect_to @css, notice: 'Css was successfully created.' }
        format.json { render :show, status: :created, location: @css }
      else
        format.html { render :new }
        format.json { render json: @css.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /csses/1
  # PATCH/PUT /csses/1.json
  def update
    respond_to do |format|
      if @css.update(css_params)
        format.html { redirect_to @css, notice: 'Css was successfully updated.' }
        format.json { render :show, status: :ok, location: @css }
      else
        format.html { render :edit }
        format.json { render json: @css.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /csses/1
  # DELETE /csses/1.json
  def destroy
    @css.destroy
    respond_to do |format|
      format.html { redirect_to csses_url, notice: 'Css was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_css
      @css = Css.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def css_params
      params.require(:css).permit(:ttle, :code)
    end
end

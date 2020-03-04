class JavaqueriesController < ApplicationController
  before_action :set_javaquery, only: [:show, :edit, :update, :destroy]

  # GET /javaqueries
  # GET /javaqueries.json
  def index
    @javaqueries = Javaquery.all
  end

  # GET /javaqueries/1
  # GET /javaqueries/1.json
  def show
  end

  # GET /javaqueries/new
  def new
    @javaquery = Javaquery.new
  end

  # GET /javaqueries/1/edit
  def edit
  end

  # POST /javaqueries
  # POST /javaqueries.json
  def create
    @javaquery = Javaquery.new(javaquery_params)

    respond_to do |format|
      if @javaquery.save
        format.html { redirect_to @javaquery, notice: 'Javaquery was successfully created.' }
        format.json { render :show, status: :created, location: @javaquery }
      else
        format.html { render :new }
        format.json { render json: @javaquery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /javaqueries/1
  # PATCH/PUT /javaqueries/1.json
  def update
    respond_to do |format|
      if @javaquery.update(javaquery_params)
        format.html { redirect_to @javaquery, notice: 'Javaquery was successfully updated.' }
        format.json { render :show, status: :ok, location: @javaquery }
      else
        format.html { render :edit }
        format.json { render json: @javaquery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /javaqueries/1
  # DELETE /javaqueries/1.json
  def destroy
    @javaquery.destroy
    respond_to do |format|
      format.html { redirect_to javaqueries_url, notice: 'Javaquery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_javaquery
      @javaquery = Javaquery.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def javaquery_params
      params.require(:javaquery).permit(:title, :code)
    end
end

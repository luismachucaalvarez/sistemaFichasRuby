class ComputertypesController < ApplicationController
  before_action :set_computertype, only: [:show, :edit, :update, :destroy]

  # GET /computertypes
  # GET /computertypes.json
  def index
    @computertypes = Computertype.all
  end

  # GET /computertypes/1
  # GET /computertypes/1.json
  def show
  end

  # GET /computertypes/new
  def new
    @computertype = Computertype.new
  end

  # GET /computertypes/1/edit
  def edit
  end

  # POST /computertypes
  # POST /computertypes.json
  def create
    @computertype = Computertype.new(computertype_params)

    respond_to do |format|
      if @computertype.save
        format.html { redirect_to @computertype, notice: 'Computertype was successfully created.' }
        format.json { render :show, status: :created, location: @computertype }
      else
        format.html { render :new }
        format.json { render json: @computertype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /computertypes/1
  # PATCH/PUT /computertypes/1.json
  def update
    respond_to do |format|
      if @computertype.update(computertype_params)
        format.html { redirect_to @computertype, notice: 'Computertype was successfully updated.' }
        format.json { render :show, status: :ok, location: @computertype }
      else
        format.html { render :edit }
        format.json { render json: @computertype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /computertypes/1
  # DELETE /computertypes/1.json
  def destroy
    @computertype.destroy
    respond_to do |format|
      format.html { redirect_to computertypes_url, notice: 'Computertype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_computertype
      @computertype = Computertype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def computertype_params
      params.require(:computertype).permit(:description)
    end
end

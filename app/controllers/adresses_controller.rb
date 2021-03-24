class AdressesController < ApplicationController
  before_action :set_adress, only: [:show, :edit, :update, :destroy]

  # GET /adresses
  def index
    @adresses = Adress.all
  end

  # GET /adresses/1
  def show
  end

  # GET /adresses/new
  def new
    @adress = Adress.new
  end

  # GET /adresses/1/edit
  def edit
  end

  # POST /adresses
  def create
    @adress = Adress.new(adress_params)

    if @adress.save
      redirect_to @adress, notice: 'Adress was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /adresses/1
  def update
    if @adress.update(adress_params)
      redirect_to @adress, notice: 'Adress was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /adresses/1
  def destroy
    @adress.destroy
    redirect_to adresses_url, notice: 'Adress was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adress
      @adress = Adress.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def adress_params
      params.require(:adress).permit(:street, :city, :state, :contact_id)
    end
end

class DrinkTypesController < ApplicationController
  before_action :set_drink_type, only: [:show, :edit, :update, :destroy]

  # GET /drink_types
  def index
    @drink_types = DrinkType.all
  end

  # GET /drink_types/1
  def show
  end

  # GET /drink_types/new
  def new
    @drink_type = DrinkType.new
  end

  # GET /drink_types/1/edit
  def edit
  end

  # POST /drink_types
  def create
    @drink_type = DrinkType.new(drink_type_params)

    if @drink_type.save
      redirect_to @drink_type, notice: 'Drink type was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /drink_types/1
  def update
    if @drink_type.update(drink_type_params)
      redirect_to @drink_type, notice: 'Drink type was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /drink_types/1
  def destroy
    @drink_type.destroy
    redirect_to drink_types_url, notice: 'Drink type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drink_type
      @drink_type = DrinkType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def drink_type_params
      params.require(:drink_type).permit(:name, :description, :picture)
    end
end

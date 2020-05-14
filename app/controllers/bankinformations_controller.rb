class BankinformationsController < ApplicationController
  before_action :set_bankinformation, only: [:show, :update, :destroy]

  # GET /bankinformations
  def index
    @bankinformations = Bankinformation.all

    render json: @bankinformations
  end

  # GET /bankinformations/1
  def show
    render json: @bankinformation
  end

  # POST /bankinformations
  def create
    @bankinformation = Bankinformation.new(bankinformation_params)
    @bankinformation.user_id = params[:user_id]

    if @bankinformation.save
      render json: @bankinformation, status: :created, location: @bankinformation
    else
      render json: @bankinformation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bankinformations/1
  def update
    if @bankinformation.update(bankinformation_params)
      render json: @bankinformation
    else
      render json: @bankinformation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bankinformations/1
  def destroy
    @bankinformation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bankinformation
      @bankinformation = Bankinformation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bankinformation_params
      params.require(:bankinformation).permit(:bankname, :accountnumber, :routingnumber, :bankiban)
    end
end

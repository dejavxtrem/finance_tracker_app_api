class CreditcardsController < ApplicationController
  before_action :set_creditcard, only: [:show, :update, :destroy]

  # GET /creditcards
  def index
    @creditcards = Creditcard.all

    render json: @creditcards
  end

  # GET /creditcards/1
  def show
    render json: @creditcard
  end

  # POST /creditcards
  def create
    @creditcard = Creditcard.new(creditcard_params)

    if @creditcard.save
      render json: @creditcard, status: :created, location: @creditcard
    else
      render json: @creditcard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /creditcards/1
  def update
    if @creditcard.update(creditcard_params)
      render json: @creditcard
    else
      render json: @creditcard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /creditcards/1
  def destroy
    @creditcard.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creditcard
      @creditcard = Creditcard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def creditcard_params
      params.require(:creditcard).permit(:creditcard_company, :merchant_name, :amount, :creditcard_number)
    end
end

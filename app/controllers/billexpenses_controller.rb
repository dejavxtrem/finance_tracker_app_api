class BillexpensesController < ApplicationController

  # GET /billexpenses
  def index
    @billexpenses = Billexpense.all

    render json: @billexpenses
  end

  # GET /billexpenses/1
  def show
    render json: @billexpense
  end

  # POST /billexpenses
  def create
    @billexpense = Billexpense.new(billexpense_params)

    if @billexpense.save
      render json: @billexpense, status: :created, location: @billexpense
    else
      render json: @billexpense.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /billexpenses/1
  # def update
  #   if @billexpense.update(billexpense_params)
  #     render json: @billexpense
  #   else
  #     render json: @billexpense.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /billexpenses/1
  # def destroy
  #   @billexpense.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_billexpense
    #   @billexpense = Billexpense.find(params[:id])
    # end

    # Only allow a trusted parameter "white list" through.
    def billexpense_params
      params.require(:billexpense).permit(:billtype, :companyname, :amount, :due_date)
    end
end

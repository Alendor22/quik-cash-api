class Api::V1::ItemsController < ApplicationController
  before_action :set_transaction, only: [:show, :update, :destroy]

  # GET /transactions
  def index
    @transactions = Transaction.all

    render json: @transactions, include: [:user]
  end

  # GET /transactions/1
  def show
    render json: @transaction, include: [:user]
  end

  # POST /transactions
  def create
    @transaction = Transaction.new(transaction_params)

    if @transaction.save
      render json: @transaction, include: [:user],
      status: :created
    else
      render json: @transaction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /transactions/1
  def update
    if @transaction.update(transaction_params)
      render json: @transaction
    else
      render json: @transaction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /transaction/1
  def destroy
    if @transaction.destroy
      render json: {message: "Transaction Deleted"},
      status: 200
    else
      render json {message: "Transaction Failed To Delete"},
      status: :unprocessable_entity
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def transaction_params
      params.require(:transaction).permit(:item_name ,:description, :price, :sold, :favorite)
    end
end

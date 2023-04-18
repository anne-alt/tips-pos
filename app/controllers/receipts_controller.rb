class ReceiptsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  # GET /receipts
  def index
    receipts = Receipt.all
    render json: receipts
  end

  # POST /receipts
  def create
    receipt = Receipt.create(receipt_params)
    render json: receipt, status: :created
  end

  # GET /receipts/:id
  def show
    receipt = find_receipt
    render json: receipt
  end

  # PATCH /receipts/:id
  def update
    receipt = find_receipt
    receipt.update(user_params)
    render json: receipt
  end

  # DELETE /receipts/:id
  def destroy
    receipt = find_receipt
    receipt.destroy
    head :no_content
  end    

private

  def receipt_params
    params.permit(:total, :cash, :mpesa, :quantity)
  end

  def find_receipt
    Receipt.find(params[:id])
  end


  def render_not_found_response
    render json: { error: "Receipt not found" }, status: :not_found
  end

end

class ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  # GET /products
  def index
    products = Product.all
    render json: products
  end

  # POST /products
  def create
    product = Product.create(product_params)
    render json: product, status: :created
  end

  # GET /products/:id
  def show
    product = find_product
    render json: product
  end

  # PATCH /products/:id
  def update
    product = find_product
    product.update(product_params)
    render json: product
  end

  # DELETE /products/:id
  def destroy
    product = find_product
    product.destroy
    head :no_content
  end 

private

  def product_params
    params.permit(:name, :size, :quantity, :category, :selling_price)
  end

  def find_product
    Product.find(params[:id])
  end

  def render_not_found_response
    render json: { error: "Product not found" }, status: :not_found
  end

end

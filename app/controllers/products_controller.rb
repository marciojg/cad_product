class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @product.build_combination
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      flash[:notice] = "Produto Criado com sucesso"
      redirect_to @product
    else
      render :new
    end
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      flash[:notice] = "Produto Atualizado com sucesso"
      redirect_to @product
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])

    @product.destroy
    flash[:notice] = "Produto Deletado com sucesso"
    redirect_to products_url
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit :name, :description, combination_attributes: [:id, :amount, :color_id, :size_id]
  end
end

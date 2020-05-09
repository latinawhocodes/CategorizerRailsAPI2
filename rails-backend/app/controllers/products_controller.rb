class ProductsController < ApplicationController

    def index 
        @products = Product.all 
        render json: @products, status:200
    end

    def show 
        @product = Product.find(params[:id])
    end

    def create 
        @product = Product.create(product_params)
    end

    def update 
        @product = Product.find(params[:id])
        @product.update(product_params)
        render json: @product, status: 200 
    end 

    def destroy 
        @product = Product.find(params[:id])
        @product.delete
        render json: {product_id: @product.id }
    end 

    private 
        def product_params
            params.require(:product).permit(
                :brand, 
                :category, 
                :full_size, 
                :notes
            )
        end
end

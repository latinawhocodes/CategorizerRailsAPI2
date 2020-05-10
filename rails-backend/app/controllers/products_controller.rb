class ProductsController < ApplicationController

    def index 
        @products = Product.all 
        render json: @products, include: [:category], status:200
    end

    def show 
        @product = Product.find(params[:id])
        render json: @product, status: 200
    end

    def create 
        @category = Category.find_or_create_by(name: category_params[:name])
        @product = @category.products.build(category_params)

        if @product.save
            render json: @product, include: [:category], status: 200 
        else 
            render json: {message: "Product not created!"}
        end
    end

    def update 
        @product = Product.find(params[:id])
        if @product.update(product_params)
            render json: @product, status: 200 
        else 
            render json: {message: "Product not updated!"}
        end
    end 

    def destroy 
        @product = Product.find(params[:id])
        @product.delete
        render json: {product_id: @product.id }
    end 

    private 
        def set_product 
            @product = Product.find_by_id(params[:id])
        end

        def category_params
            params.require(:category).permit(:name)
        end

        def product_params
            params.require(:product).permit(
                :brand, 
                :category, 
                :full_size, 
                :notes
            )
        end
end




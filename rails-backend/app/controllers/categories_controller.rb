class CategoriesController < ApplicationController

    def index 
        @categories = Category.all 
        render json: @categories, include: [:products], status:200
    end

    def show 
        @category = Category.find(params[:id])
    end

    def create 
        @category = Category.create(category_params)
    end

    def update 
        @category = Category.find(params[:id])
        @category.update(category_params)
        render json: @category, status: 200 
    end 

    def destroy 
        @category = Category.find(params[:id])
        @category.delete
        render json: {category_id: @category.id }
    end 

    private 
        def category_params
            params.require(:category).permit(:name)
        end
end

class CategoriesController < ApplicationController

    def index 
        @categories = Category.all 
        render json: @categories, include: [:products], status: 200
    end

    def show 
        @category = Category.find(params[:id])
        render json: @category, status: 200 
    end

    def create 
        @category = Category.create(category_params)
        if @category.save
            render json: @category, status: 200 
        else 
            render json: {message: "Category not created!"}
        end 
    end

    def update 
        @category = Category.find(params[:id])
        if @category.update(category_params)
            render json: @category, status: 200 
        else 
            render json: {message: "Category not updated!"}
        end 
    end 

    def destroy 
        @category = Category.find(params[:id])
        @category.delete
    end 

    private 
        def set_category
            @category = Category.find_by_id(params[:id])
        end 

        def category_params
            params.require(:category).permit(:name)
        end
end

class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def new
        @product = Product.new
    end

    def show
        @product = Product.find(params[:id])
    end

    def create
        @product = Product.new(product_params)
        # debugger
        if @product.save
            redirect_to root_path
        else 
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @product = Product.find(params[:id])
    end

    def update
        @product = Product.find(params[:id])
        if @product.update(product_params)
            redirect_to @product
        else
            render :edit, status: :unprocessable_entity
        end
    end

    private
    def product_params
        params.require(:product).permit(:title, :description, :price, :file)
    end
end

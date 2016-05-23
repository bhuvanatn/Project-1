class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @categories = Category.new
  end
  def create
    @category = Category.new category_params
      if @category.save
        redirect_to categories_path
      else
        render :new
      end
  end
  def edit
      @categories = Category.find params[:id]
  end
  def update
    category = Category.find params[:id]
    category.update category_params
    redirect_to categories_path
  end
  def destroy
      category = Category.find params[:id]
      category.destroy
      redirect_to categories_path
  end
  def show
      @categories = Category.find params[:id]
  end

  private
  def category_params
    params.require(:category).permit(:categorytype)
  end
end

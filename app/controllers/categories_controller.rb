class CategoriesController < ApplicationController

  def new
   @category = Category.new
  end
  def create
    @category = Category.new(category_params)
    if @category.save
      render 'index'
    else
      logger.info"==========#{@category.errors.messages}"
      render 'new'
    end
  end
  def update
    @category = Category.find(params[:id])
    if @category.id != params[:category][:parent_id].to_i
     if @category.update(category_params)
      redirect_to categories_path
     else
      render 'edit'
     end
    else
      render 'edit'
    end
  end
  def edit
    @category = Category.find_by_id(params[:id])
  end

  def show
    @category = Category.find_by_id(params[:id])
  end

  def index
    @categories = Category.all
    if @categories.blank?
      flash[:notice] = "No Categories were Created"
    end
  end
  private
  def category_params
    params.require(:category).permit(:name, :alias_name, :parent_id, :active)
  end
end

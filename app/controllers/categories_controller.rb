class CategoriesController < ApplicationController
  def index
  end

  def show
    @category = Category.find(params["id"].to_i)
    @posts = @category.posts.reverse
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.save
  end
end

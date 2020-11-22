class CategoriesController < ApplicationController
  def index
  end

  def show
    @category = Category.find(params["id"].to_i)
    @posts = @category.posts.reverse
  end
end

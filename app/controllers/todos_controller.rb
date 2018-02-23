class TodosController < ApplicationController
  def create
  	@category = Category.find(params[:category_id])
  	@todo = @category.todos.create(params[:todo].permit(:description, :level))
  	redirect_to category_path(@category)
  end
end

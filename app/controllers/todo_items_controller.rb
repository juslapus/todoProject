class TodoItemsController < ApplicationController
	before_action :set_todo_list

	def create
		@todo_item = @todo_list.todo_items.create(item_params)

		redirect_to @todo_list
	end

	def show
		@todo_item = TodoItem.find(params[:id])
	end

	def destroy
		@todo_item = TodoItem.find(params[:id])
		if @todo_item.destroy
			flash[:success] = "Todo List item was deleted"
		else
			flash[:error] = "Todo List item could not be deleted"
		end

		redirect_to @todo_list
	end

	private
	    def set_todo_list
	      @todo_list = TodoList.find(params[:todo_list_id])
	    end

		def item_params
			params.require(:todo_item).permit(:item)
		end
end
